<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSemuasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('semuas', function (Blueprint $table) {
            $table->id();
            $table->integer('baju_id')->unsigned();
            $table->integer('jaket_id')->unsigned();
            $table->integer('celana_id')->unsigned();
            $table->integer('topi_id')->unsigned();
            $table->integer('sepatu_id')->unsigned();
            $table->timestamps();
        });
        Schema::table('semuas', function (Blueprint $table) {
            $table->foreign('baju_id')->references('id')->on('bajus')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('jaket_id')->references('id')->on('jackets')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('celana_id')->references('id')->on('celanas')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('topi_id')->references('id')->on('topis')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('sepatu_id')->references('id')->on('sepatus')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('semuas');
    }
}