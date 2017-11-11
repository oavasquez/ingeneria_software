<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

class Pago extends Model
{
    //

     protected $table = 'Pago';//nombre de la tabla 
       public $timestamps = false;//para gestion de las tablas


       protected $fillable = 
        ['idPago',
         'fecha_pago',
         'total_deduciones',
         'total_pago',
         'idEmpleado'
        ];

        public function verSueldo(){

        }
        public function calcularSueldo($resquest){
           
            $deducionesTotal = DB::select(
                            'SELECT total_deducciones as totalDeduciones 
                             FROM Pago WHERE IdEmpleado=? AND fecha_pago=?',
                             [$resquest->idEmpleado,$resquest->fechaPago]);
            $SueldoContrato = DB::select(
                            'SELECT B.sueldo as sueldo
                             FROM Empleado as A
                             INNER JOIN Contrato as B
                             ON(A.idContrato=B.idContrato)
                             WHERE idEmpleado=?',
                             [$resquest->idEmpleado]);
            
            $sueldoTotal=$deducionesTotal->totalDeduciones-$SueldoContrato->sueldo;




        return response()->json(['sueldoTotal'=>$sueldoTotal])


        }
        public function verPlanilla(){

        }
        public function guardarPlanilla(){

        }

}
