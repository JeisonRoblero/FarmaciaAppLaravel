<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVentaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('venta', function (Blueprint $table) {
            $table->engine="InnoDB";
            $table->id();
            $table->dateTime('fecha_venta');
            $table->string('metodo_pago',50);
            $table->float('total');
            $table->bigInteger('id_cliente')->unsigned(); // Llave forania externa
            $table->foreign('id_cliente')->references('id')->on('cliente')->onDelete("cascade"); // Referencia a la tabla externa
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
        Schema::dropIfExists('venta');
    }
}
