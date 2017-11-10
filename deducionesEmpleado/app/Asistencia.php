<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

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
    public function obtenerTiempoRetrado(){

    }
    public function obtenerAsistencia(){
    	
    }
    public function obtenerDiasFaltados(){
    	
    }


}
