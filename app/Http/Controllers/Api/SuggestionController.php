<?php
namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\VpProduct;
use App\Models\VpCategory;

class SuggestionController extends Controller
{
    public function index(Request $request)
    {
        $query = $request->input('q');
        if (!$query) {
            return response()->json([]);
        }
        $products = VpProduct::where('name', 'like', "%$query%")
            ->limit(5)
            ->pluck('name');
        $categories = VpCategory::where('name', 'like', "%$query%")
            ->limit(3)
            ->pluck('name');
        return response()->json([
            'products' => $products,
            'categories' => $categories
        ]);
    }
}
