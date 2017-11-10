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


    public function mostrarContrato($id) {
       $sql = DB::select(
       						'SELECT`idContrato`,`TipoContrato`,`horaEntrada`,`horaEntrada`,`horaSalida`,`diasDeTrabajo`,`fechaContratacion` FROM `contrato` WHERE `idContrato` = ?',[$id]);

        return $sql;
    }


}


