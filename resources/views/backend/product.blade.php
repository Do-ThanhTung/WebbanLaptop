@extends('backend.master')
@section('title', 'Danh sách sản phẩm')
@section('main')		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Sản phẩm</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-xs-12 col-md-12 col-lg-12">
				
				<div class="panel panel-primary">
					<div class="panel-heading">Danh sách sản phẩm</div>
					<div class="panel-body">
						<div class="bootstrap-table">
							<div class="table-responsive">
								<a href="{{ asset('admin/product/create') }}" class="btn btn-primary">Thêm sản phẩm</a>
								<table class="table table-bordered" style="margin-top:20px;">				
									<thead>
										<tr class="bg-primary">
											<th>ID</th>
											<th width="30%">Tên Sản phẩm</th>
											<th>Giá sản phẩm</th>
											<th width="20%">Ảnh sản phẩm</th>
											<th>Danh mục</th>
											<th>Tùy chọn</th>
										</tr>
									</thead>
									<tbody>
										@foreach($product_list as $product)
										<tr>
											<td>{{ $product->prod_id }}</td>
											<td>{{ $product->prod_name }}</td>
											<td>{{ number_format($product->prod_price,0,',','.')}} VND</td>
											<td class="img-product">
												<img height="150px" src="{{ asset('img/'.$product->prod_img) }}">
											</td>
											<td>{{ $product->cate_name }}</td>
											<td>
												<a href="{{ asset('admin/product/edit/' . $product->prod_id) }}" class="btn btn-warning"><i class="fa fa-pencil" aria-hidden="true"></i> Sửa</a>
												<a onclick="return confirm(' Bạn có chắc chắn muốn xóa sản phẩm này không?')" href="{{ asset('admin/product/delete/' . $product->prod_id) }}" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i> Xóa</a>
											</td>
										</tr>
										@endforeach
									</tbody>
								</table>							
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
	</div>
	<style>
		.img-product {
			display: flex;
			justify-content: center;
		}
	</style>
@stop