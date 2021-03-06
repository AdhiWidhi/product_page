<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTopisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('topis', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama');
            $table->longtext('deskripsi');
            $table->integer('harga');
            $table->string('warna');
            $table->string('ukuran');
            $table->longtext('gambar');
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
        Schema::dropIfExists('topis');
    }
}
