<?php

namespace App\Http\Controllers;

use App\Models\VpProduct;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function all()
    {
        $products = VpProduct::orderBy('prod_id', 'desc')->paginate(9);
        return view('frontend.all_products', compact('products'));
    }
}
