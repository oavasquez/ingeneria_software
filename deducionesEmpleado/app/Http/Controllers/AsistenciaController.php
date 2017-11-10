<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Asistencia;

class AsistenciaController extends Controller
{
    //

    public function aprobarPermiso(Request $resquest){

      	$instaciaPermiso= new Permiso;
      	//$instaciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instaciaPermiso::where('destination', $resquest->idpermiso)
				          ->update(['estadoPermiso' => 1]);



      }
}
