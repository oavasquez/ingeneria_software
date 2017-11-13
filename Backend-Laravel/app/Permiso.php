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

     public function guardarPermiso($resquest){


          $sql = DB::insert('INSERT INTO Permisos (idPermisos, descrip_permiso, fecha_inicio,
                                         fecha_final, num_dias, idTipo_Permiso, idEmpleado,
                                         idResposable, estadoPermiso) 
                              VALUES (NULL, ?, str_to_date(?, "%Y-%m-%d"), NULL, NULL, ?, ?, ?, NULL)',[$resquest->descripcion,
                                             $resquest->diaPermiso,
                                             $resquest->tipoPermiso,
                                             $resquest->codigoEmpleado,
                                             $resquest->codigoSuperior]);
          return $sql;

     }
     public function solicitarPermiso(){

     }

     public function aprobarPermiso($idPermiso){

     }

     public function denegarSolicitud($idPermiso){

     }
     public function imprimirSolicitud($idPermiso){
     	
     }
}
