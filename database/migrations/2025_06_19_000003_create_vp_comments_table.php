<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('vp_comments', function (Blueprint $table) {
            $table->bigIncrements('com_id');
            $table->string('com_email');
            $table->string('com_name');
            $table->string('com_content');
            $table->integer('com_status')->default(0);
            $table->unsignedBigInteger('com_product');
            $table->unsignedBigInteger('user_id');
            $table->timestamps();
            $table->softDeletes();
            $table->foreign('com_product')->references('prod_id')->on('vp_products')->onDelete('cascade');
            $table->foreign('user_id')->references('id')->on('vp_users')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('vp_comments');
    }
};
