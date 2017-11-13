<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Contrato extends Model
{
    //

    protected $table = 'Contrato';//nombre de la tabla 
    public $timestamps = false;//para gestion de las tablas

    protected $fillable = 
        ['idContrato',
         'TipoContrato',
         'horaEntrada',
         'horaSalida',
         'diasDeTrabajo',
         'fechaContratacion',
         'sueldo'
        ];


    public function mostrarContrato($resquest) {
       $sql = DB::select(
                        'SELECT A.idEmpleado AS codigoEmpleado, 
                                CONCAT(A.nombre," ", A.apellido) as nombreEmpleado, 
                                C.nombre_cargo AS cargo, B.sueldo, B.horaEntrada, B.horaSalida  
                        FROM Empleado AS A 
                        INNER JOIN Contrato AS B 
                        ON(A.idContrato=B.idContrato) 
                        INNER JOIN Cargo as C 
                        ON(A.idCargo=C.idCargo) 
                        WHERE A.idEmpleado=?',
                        [$resquest->codigoEmpleado]);

        //return $sql;
        $object = (object)$sql;
        return response()->json($object);
    }
}