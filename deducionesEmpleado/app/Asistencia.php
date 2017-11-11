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
        if(sql->HEntradaAsistencia > sql->HEntradaContrato){
            $tiempoRetrazo=$sql->HEntradaAsistencia - $sql->HEntradaContrato; 
        }




        //return $sql;
        return response()->json(['tiempoRestaso' => $tiempoRetrazo]);


    }
    

    public function obtenerAsistencia(){
    	
    }

    
    public function obtenerDiasFaltados($resquest){
        $sql = DB::select('SELECT sum(num_dias) Permisos WHERE idEmpleado=? and estadoPermiso=1 
                           GROUP BY idEmpleado',[resquest->idEmpleado]);

        return $sql;
    	
    }
    


}
