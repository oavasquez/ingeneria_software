<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

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

    public function aplicarDeducion(){
        
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

    public function verDeduciones(){


    }
    public function eliminarDeducion(){
    	
    } 
}
