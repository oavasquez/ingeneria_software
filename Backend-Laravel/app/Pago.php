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




        return response()->json(['sueldoTotal'=>$sueldoTotal]);
        }
        
        public function verPlanilla($resquest){
            $sql = DB::select(
                            'SELECT A.IdEmpleado as codigoEmpleado,A.fecha_pago as fechaPago, A.total_deducciones as totalDeduciones, A.total_pago as totalPago, CONCAT(B.nombre," ",B.apellido) as nombreEmpleado, D.nombre_cargo AS cargo, C.cantidadDeduciones
                             FROM Pago as A
                             INNER JOIN Empleado AS B
                             ON(A.IdEmpleado=B.idEmpleado)
                             INNER JOIN ( SELECT idPago AS idPago, COUNT(idPago) AS cantidadDeduciones
                                         FROM Deducciones 
                                         GROUP BY idPago ) AS C
                             ON(C.idPago=A.idPago)
                             INNER JOIN Cargo AS D 
                             ON(B.idCargo=D.idCargo)
                             WHERE DATE_FORMAT(fecha_pago,"%m")= DATE_FORMAT(CURDATE(),"%m")');
            $object = (object)$sql;
            return response()->json($object);   
        }
        
        public function guardarPlanilla(){

        }

        public function historialPagos($resquest){
            $sql = DB::select(
                            'SELECT A.idPago, CONCAT(C.nombre," ",C.apellido) as nombreEmpleado, A.fecha_pago as fechaPago,A.total_deducciones as totalDeducciones, A.total_pago as totalPago 
                             FROM Pago AS A
                             INNER JOIN Empleado AS C
                             ON(A.IdEmpleado=C.idEmpleado)');
            $object = (object)$sql;
            return response()->json($object);   

        }

}
