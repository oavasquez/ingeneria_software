<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cargo extends Model
{
    //

    protected $table = 'Cargo';//nombre de la tabla 
    public $timestamps = false;//para gestion de las tablas


    protected $fillable = 
        ['idCargo',
         'nombre_cargo'
        ];
    public function agregarCargo(){

    }
    public function modificarCargo(){
    	
    }
    public function eliminarCargo(){
    	
    }
}
