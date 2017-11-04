<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Empleado extends Model
{
    //

       protected $table = 'Empleado';//nombre de la tabla 
       protected $nombre="";
       public $timestamps = false;//para gestion de las tablas



 public function mostrarEmpleado($id) {
       $sql = DB::select(
       						'SELECT A.cod_empleado as codigo ,A.nombre as nombre, B.nombre_cargo as cargo,              
       								C.horaEntrada as horaentrada, C.horaSalida as horasalida, 
       								B.Sueldo_idPlanilla as sueldo   
       						 FROM Empleado as A 
       						 Inner Join  Cargo as B 
       						 on( A.IdCargo=B.IdCargo )
       						 Inner Join Contrato as C 
       						 on(A.IdContrato=C.IdContrato)
       						 WHERE A.cod_empleado=?',
       						 [$id]);

        return $sql;
    }



 public function insertarEmpleado() {
       $sql = DB::insert(
       						'SELECT A.cod_empleado as codigo ,A.nombre as nombre, B.nombre_cargo as cargo,              
       								C.horaEntrada as horaentrada, C.horaSalida as horasalida, 
       								B.Sueldo_idPlanilla as sueldo   
       						 FROM Empleado as A 
       						 Inner Join  Cargo as B 
       						 on( A.IdCargo=B.IdCargo )
       						 Inner Join Contrato as C 
       						 on(A.IdContrato=C.IdContrato)');

        return $sql;
    }

  public function eliminarEmpleado() {
       $sql = DB::delete(
       						'SELECT A.cod_empleado as codigo ,A.nombre as nombre, B.nombre_cargo as cargo,              
       								C.horaEntrada as horaentrada, C.horaSalida as horasalida, 
       								B.Sueldo_idPlanilla as sueldo   
       						 FROM Empleado as A 
       						 Inner Join  Cargo as B 
       						 on( A.IdCargo=B.IdCargo )
       						 Inner Join Contrato as C 
       						 on(A.IdContrato=C.IdContrato)');

        return $sql;
    }

    public function modificarEmpleado() {
       $sql = DB::update(
       						'SELECT A.cod_empleado as codigo ,A.nombre as nombre, B.nombre_cargo as cargo,              
       								C.horaEntrada as horaentrada, C.horaSalida as horasalida, 
       								B.Sueldo_idPlanilla as sueldo   
       						 FROM Empleado as A 
       						 Inner Join  Cargo as B 
       						 on( A.IdCargo=B.IdCargo )
       						 Inner Join Contrato as C 
       						 on(A.IdContrato=C.IdContrato)');

        return $sql;
    }
}
