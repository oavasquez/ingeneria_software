<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

//use Illuminate\Support\Facades\DB;
use DB;
use PDO;
use stdClass;

class Deducciones extends Model
{
    //

    protected $table = 'Deducciones';//nombre de la tabla 
    public $timestamps = false;//para gestion de las tablas
    protected $fillable = 
        ['idDeducciones',
         'dedu_IHSS',
         'dedu_RAP',
         'dedu_aportaciones',
         'dedu_falta',
         'idPermisos',
         'idPago'

        ];

    public function aplicarDeduccion(){
        
        /*
        $idPagoEmpleado =DB::select('SELECT  idPago 
                                     FROM Pago 
                                     WHERE fecha_pago= ? and IdEmpleado=?',
                                    [$fecha,$idEmpleado]);
        
        $deducionesXpago=DB::select(
                                    'SELECT SUM(dedu_falta) as deducionesTotales, 
                                            SUM(dedu_aportaciones) as aportacionTotales 
                                     FROM Deducciones WHERE idPago=? GROUP BY idPago',
                                    [$idPagoEmpleado] );

        $deducionesFijas=DB::select(
                                    'SELECT dedu_RAP as rap ,dedu_IHSS as ihss 
                                     FROM Deducciones WHERE idPago=?',
                                    [$idPagoEmpleado] );

        $deducionTotal=$deducionesFijas+deducionesXpago;

        $idPago =DB::update('UPDATE Deducciones 
                             SET votes = 100 where name = ?', ['John']);
         

         $sql = DB::select(
                            'SELECT`idContrato`,`TipoContrato`,`horaEntrada`,`horaEntrada`,`horaSalida`,`diasDeTrabajo`,`fechaContratacion` FROM `contrato` WHERE `idContrato` = ?',
                            [$id]);

        return $sql;*/

    }

    public function verDeducciones($resquest){

        $sql =DB::select(
            'SELECT A.idDeducciones, CONCAT(C.nombre," ",C.apellido) as nombreEmpleado, A.dedu_IHSS as deduccionIHSS , A.dedu_RAP as deduccionRAP, A.dedu_aportaciones as deducionesAportaciones
             FROM Deducciones AS A
             INNER JOIN Pago AS B
             ON(A.idPago=B.idPago)
             INNER JOIN Empleado AS C
             ON(B.IdEmpleado=C.idEmpleado)');
             
     return json_encode($sql);
    }


    public function eliminarDeduccion(){
    	
    } 
}
