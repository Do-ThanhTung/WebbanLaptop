<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('vp_orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->string('address');
            $table->string('total_price');
            $table->string('total_products');
            $table->string('placed_order_date');
            $table->string('order_status')->default('Chờ xác nhận');
            $table->unsignedBigInteger('user_id');
            $table->timestamps();
            $table->softDeletes();
            $table->foreign('user_id')->references('id')->on('vp_users')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('vp_orders');
    }
};
