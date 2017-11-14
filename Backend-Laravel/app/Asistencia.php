<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

class Asistencia extends Model
{

    //

    protected $table = 'Asistencias';//nombre de la tabla 
    public $timestamps = false;//para gestion de las tablas


    protected $fillable = 
        ['idAsistencias',
         'fecha',
         'hora_entrada',
         'hora_salida',
         'idEmpleado',
         'EstadoAsistencia'
        ];
    public function obtenerTiempoRetraso($resquest){
        $sql = DB::select(
                        'SELECT B.hora_entrada as HEntradaAsistencia, C.horaEntrada as HEntradaContrato
                        FROM Empleado A
                        INNER JOIN Asistencias AS B
                        ON(A.idEmpleado=B.idEmpleado)
                        INNER JOIN Contrato AS C
                        ON(A.idContrato=C.idContrato)
                        WHERE A.idEmpleado=? and B.fecha=?',[$resquest->idEmpleado,$resquest->fecha]);
        if($sql->HEntradaAsistencia > $sql->HEntradaContrato){
            $tiempoRetrazo=$sql->HEntradaAsistencia - $sql->HEntradaContrato; 
        }
        //return $sql;
        return response()->json(['tiempoRestaso' => $tiempoRetrazo]);
    }
    

    public function obtenerAsistencia(){
    	
    }

    
    public function obtenerDiasFaltados($resquest){
        $sql = DB::select('SELECT sum(num_dias), idEmpleado FROM Permisos WHERE idEmpleado=? and estadoPermiso=1 
                           GROUP BY idEmpleado',[$resquest->idEmpleado]);

        $object = (object)$sql;
        return response()->json($object);                            
    	
    }


     public function asistenciaMesActual($resquest){
        $sql = DB::select('
                            SELECT CONCAT(B.nombre," ",B.apellido) as nombreEmpleado, A.fecha AS fechaAsistencia, A.hora_entrada AS horaEntrada, A.hora_salida AS horaSalida, A.EstadoAsistencia as estadoAsistencia
                            FROM Asistencias AS A
                            INNER JOIN Empleado AS B
                            ON(A.idEmpleado=B.idEmpleado)
                            WHERE DATE_FORMAT(A.fecha, "%m")= DATE_FORMAT(CURDATE(),"%m")');

        $object = (object)$sql;
        return response()->json($object); 
    }

    public function asistenciasEmpleado($resquest){
        $sql = DB::select('
                            SELECT CONCAT(B.nombre," ",B.apellido) as nombreEmpleado, A.fecha AS fechaAsistencia, A.hora_entrada AS horaEntrada, A.hora_salida AS horaSalida, A.EstadoAsistencia as estadoAsistencia
                            FROM Asistencias AS A
                            INNER JOIN Empleado AS B
                            ON(A.idEmpleado=B.idEmpleado)
                            WHERE A.idEmpleado=?',
                            [$resquest->codigoEmpleado]);
        $object = (object)$sql;
        return response()->json($object); 
    }
    
    public function obtenerAsistencias($resquest){
        $sql = DB::select('
                            SELECT CONCAT(B.nombre," ",B.apellido) as nombreEmpleado, A.fecha AS fechaAsistencia, A.hora_entrada AS horaEntrada, A.hora_salida AS horaSalida, A.EstadoAsistencia as estadoAsistencia
                            FROM Asistencias AS A
                            INNER JOIN Empleado AS B
                            ON(A.idEmpleado=B.idEmpleado)');

        $object = (object)$sql;
        return response()->json($object);         
    }
    
    






}
