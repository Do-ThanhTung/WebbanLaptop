<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\VpOrder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use PhpParser\Node\Expr\FuncCall;

class OrderController extends Controller
{
    public function getOrder()
    {
        $wait_confirm = VpOrder::Where('order_status' , 'Chờ xác nhận')->orderBy('created_at', 'asc')->get();
        $confirmed = VpOrder::Where('order_status' , 'Đã xác nhận')->orderBy('created_at', 'asc')->get();
        $transforming = VpOrder::Where('order_status' , 'Đang vận chuyển')->orderBy('created_at', 'asc')->get();
        $done = VpOrder::Where('order_status' , 'Hoàn thành')->orderBy('created_at', 'asc')->get();

        return view('backend.order', compact('wait_confirm', 'confirmed', 'transforming', 'done'));
    }
    public function getDeleteOrder($id)
    {
        $order = VpOrder::find($id);

        $order->delete();

        return redirect()->intended('admin/order')->with('success', 'Xóa đơn hàng thành công!');;
    }
    public function viewDetailOrder($id)
    {
        $order = VpOrder::find($id);
        return view('backend.orderdetail', compact('order'));
    }
    public function confirmOrder($id)
    {
        $order = VpOrder::find($id);
        $order->order_status = 'Đã xác nhận';
        $order->save();
        return redirect()->intended('admin/order')->with('success', 'Xác nhận đơn hàng thành công!');
    }
    public function transportOrder($id)
    {
        $order = VpOrder::find($id);
        $order->order_status = 'Đang vận chuyển';
        $order->save();
        return redirect()->intended('admin/order')->with('success', 'Cập nhật đơn hàng thành công!');;
    }
}
