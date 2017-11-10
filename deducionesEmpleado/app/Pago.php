<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pago extends Model
{
    //

     protected $table = 'Pago';//nombre de la tabla 
       public $timestamps = false;//para gestion de las tablas


       protected $fillable = 
        ['idPago',
         'fecha_pago',
         'total_deduciones',
         'total_pago',
         'idDeduciones',
         'idPermisos',
         'idEmpleado'
        ];

        public function verSueldo(){

        }
        public function calcularSueldo(){

        }
        public function verPlanilla(){

        }
        public function guardarPlanilla(){

        }

}
