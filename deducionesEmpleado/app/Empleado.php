<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Empleado extends Model
{
    //

       protected $table = 'Empleado';//nombre de la tabla 
       protected $nombre="";
       public $timestamps = false;//para gestion de las tablas



 public function mostrarEmpleado() {
       $sql = DB::select('SELECT nombre FROM Empleado ');

        return $sql;
    }
}
