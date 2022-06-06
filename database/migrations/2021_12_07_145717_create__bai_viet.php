<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBaiViet extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('BaiViet', function (Blueprint $table) {
            $table->increments('id_BaiViet');
            $table->integer('id_DanhMucBaiViet');
            $table->string('TenBaiViet');
            $table->text('NoiDungBaiViet');
            $table->string('HinhAnh_BaiViet');
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('BaiViet');
    }
}
