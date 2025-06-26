@extends('frontend.master')
@section('title', 'Tất cả sản phẩm')
@section('main')
<div id="wrap-inner" class="d-flex flex-column align-items-center">
    <h2 style="color: orange; margin: 30px 0 20px 0; font-size: 2.5rem; font-weight: bold;">
        Tất cả sản phẩm
    </h2>
    <div class="product-list row" style="gap: 15px;">
        @foreach($products as $product)
            <div style="border-radius: 10px;" class="product-item col-md-3 col-sm-6 col-xs-12">
                <a href="#"><img height="150px" src="{{ asset('img/'.$product->prod_img) }}" class="img-thumbnail"></a>
                <p><a href="#">{{ $product->prod_name }}</a></p>
                <p class="price">{{ number_format($product->prod_price,0,',','.' )}} VND</p>
                <div class="marsk" onclick="window.location='{{ asset('/detail/' . $product->prod_id) }}'" style="cursor:pointer;">
                    <a href="{{ asset('/detail/' . $product->prod_id) }}" class="circle-more" tabindex="-1">Xem thêm</a>
                </div>
            </div>
        @endforeach
    </div>
    <div class="d-flex justify-content-center mt-4">
        {{ $products->onEachSide(1)->links('pagination::bootstrap-4') }}
    </div>
</div>
@stop
