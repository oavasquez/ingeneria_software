<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Asistencia;

class AsistenciaController extends Controller
{
    //

    public function obtenerTiempoRetraso(Request $resquest){

      	$instanciaAsistencia= new Asistencia;
      	//$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instanciaPermiso->obtenerTiempoRetraso($resquest);



      }

    public function obtenerAsistencia(Request $resquest){
    	$instanciaAsistencia= new Asistencia;
      	//$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instanciaAsistencia::where('fecha', $resquest->fecha)
				          ->get();
    	
    }
    public function obtenerDiasFaltados(Request $resquest){
    	$instanciaAsistencia= new Asistencia;
    	return $instanciaAsistencia->obtenerDiasFaltados($resquest);
    	
    }
}
