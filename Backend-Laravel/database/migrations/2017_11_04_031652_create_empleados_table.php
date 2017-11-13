<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmpleadosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Empleado', function (Blueprint $table) {
            $table->increments('idEmpleado');
            $table->string("nombre");
            $table->string("apellido");
            $table->string("identidad");
            $table->string("genero");
            $table->integer("edad");
            $table->date("fecha_nacimiento");
            $table->string("telefono");
            $table->string("correo");
            $table->string("direccion");
            $table->integer("idEncargado");
            $table->string("cod_empleado");
            $table->integer("idCargo");
            $table->integer("idContrato");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Empleado');
    }
}
