<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDatHang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('DatHang', function (Blueprint $table) {
             $table->increments('id_DH');

            $table->string('TenDatHang');
             $table->string('Email_DH');
             $table->string('DiaChi_DH');
              $table->string('SoDienThoai_DH');
               $table->text('GhiChu_DH');
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
        Schema::dropIfExists('DatHang');
    }
}
