<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('vp_products', function (Blueprint $table) {
            $table->bigIncrements('prod_id');
            $table->string('prod_name');
            $table->string('prod_slug');
            $table->bigInteger('prod_price');
            $table->string('prod_img');
            $table->string('prod_condition');
            $table->tinyInteger('prod_status');
            $table->text('prod_description');
            $table->tinyInteger('prod_featured');
            $table->unsignedBigInteger('prod_cate');
            $table->timestamps();
            $table->softDeletes();
            $table->foreign('prod_cate')->references('cate_id')->on('vp_categories')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('vp_products');
    }
};
