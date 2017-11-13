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
     public function permisosSinLeer($resquest){


          $sql = DB::insert('SELECT count(A.idPermisos) as cantidadPermisos 
                             FROM Permisos as A
                             WHERE A.idResposable=? AND A.estadoPermiso IS NULL ',
                             [$resquest->codigoEmpleado]);
          return $sql;

     }

     public function permisosHistorial($resquest){


          $sql = DB::insert('SELECT A.idPermisos as CodigoPermiso, 
                             A.idEmpleado as codigoEmpleado, 
                             CONCAT(B.nombre," ",B.apellido) as nombreEmpleado, 
                             A.fecha_inicio as diaPermiso,
                             C.nombre_permiso as tipoPermiso, 
                             A.descrip_permiso as descripción, A.estadoPermiso as estadoPermiso
                             FROM Permisos as A
                             INNER JOIN Empleado as B
                             ON(A.idEmpleado=B.idEmpleado)
                             INNER JOIN Tipo_Permiso as C
                             ON(A.idTipo_Permiso=C.idTipo_Permiso)
                             WHERE A.idResposable=? ',
                             [$resquest->codigoEmpleado]);
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


