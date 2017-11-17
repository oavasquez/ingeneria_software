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
                                C.nombre_cargo AS cargo, A.sueldo, A.horaEntrada, A.horaSalida  
                        FROM Empleado AS A 
                        INNER JOIN Cargo as C 
                        ON(A.idCargo=C.idCargo) 
                        WHERE A.idEmpleado=?',
                        [$resquest->codigoEmpleado]);

        //return $sql;
        $object = (object)$sql;
        return response()->json($object);
    }

    public function guardarContrato($resquest) {
       $sql= DB::table('Contrato')->insertGetId([ 'idContrato' => NULL, 
                                                  'TipoContrato' => $resquest->tipoContrato,
                                                  'horaEntrada' =>$resquest->horaEntrada ,
                                                  'horaSalida' => $resquest->horaSalida,
                                                  'diasDeTrabajo' => $resquest->diasDeTrabajo,
                                                  'fechaContratacion' => $resquest->fechaContratacion,
                                                  'sueldo' => $resquest->sueldo]);
        $object = (object)$sql;
        return response()->json($object); 

        
    }
}