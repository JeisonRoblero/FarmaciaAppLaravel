<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCarritoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('carrito', function (Blueprint $table) {
            $table->integer('cantidad');
            $table->float('subtotal');
            $table->bigInteger('id_medicamento')->unsigned(); // Llave forania externa;
            $table->foreign('id_medicamento')->references('id')->on('medicamento')->onDelete("cascade"); // Referencia a la tabla externa
            $table->bigInteger('id_venta')->unsigned(); // Llave forania externa;
            $table->foreign('id_venta')->references('id')->on('venta')->onDelete("cascade"); // Referencia a la tabla externa
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('carrito');
    }
}
