<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Empleado extends Model
{
    //

       protected $table = 'Empleado';//nombre de la tabla 
       public $timestamps = false;//para gestion de las tablas


       protected $fillable = 
        ['idEmpleado',
         'nombre',
         'apellido',
         'identidad',
         'genero',
         'edad',
         'fecha_nacimiento',
         'telefono',
         'correo',
         'direccion',
         'cod_empleado',
         'idCargo',
         'idEncargado',
         'idContrato',
         'nombreUsuario',
         'contrasena'

        ];



    public function obtenerDatosEmpleado($id) {
        
        $sql = DB::select(
                            'SELECT A.cod_empleado as codigo ,A.nombre as nombre, B.nombre_cargo as cargo,              
                                    C.horaEntrada as horaentrada, C.horaSalida as horasalida, 
                                    B.Sueldo_idPlanilla as sueldo   
                                FROM Empleado as A 
                                Inner Join  Cargo as B 
                                on( A.IdCargo=B.IdCargo ) 
                                Inner Join Contrato as C 
                                on(A.IdContrato=C.IdContrato) 
                                WHERE A.cod_empleado=?',[$id]);

        return $sql;
    }

    public function iniciarSesion($resquest) {
        $sql = DB::select(
                    'SELECT A.idEmpleado as codigoUsuario, CONCAT(A.nombre," ", A.apellido) as nombreUsuario, B.nombre_cargo as cargo 
                    FROM Empleado A 
                    INNER JOIN Cargo as B 
                    ON(A.idCargo=B.idCargo) 
                    WHERE nombreUsuario=? AND contrasena=?',
                    [$resquest->nombreUsuario,$resquest->contrasenia]);

        $object = (object)$sql;
        return response()->json($object);      
    }




 public function guardarDatosEmpleado($resquest) {
    

    
    }

    public function eliminarEmpleado() {
        
    }

    public function modificarEmpleado() {
        
    }

    public function obtenerSuperiores($resquest) {
        $sql = DB::select(
                        'SELECT idEmpleado as codigoEmpleado, CONCAT(A.nombre," ",A.apellido) as nombreEmpleado, B.nombre_cargo as cargo 
                            FROM Empleado A 
                            INNER JOIN Cargo B  
                            ON(A.idCargo=B.idCargo) 
                            WHERE A.idCargo=1');

        $object = (object)$sql;
        return response()->json($object);
    }
}
