<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permiso extends Model
{
    //

     protected $table = 'Permisos';//nombre de la tabla 
     public $timestamps = false;//para gestion de las tablas

	protected $fillable = 
	['idPermisos',
	 'descrip_permiso',
	 'fecha_inicio',
	 'fecha_final',
	 'num_dias',
	 'idTipo_Permiso',
	 'idEmpleado',
	 'idResposable',
	 'estadoPermiso'
	];


     public function solicitarPermiso(){

     }

     public function aprobarPermiso($idPermiso){

     }

     public function denegarSolicitud($idPermiso){

     }
     public function imprimirSolicitud($idPermiso){
     	
     }
}
