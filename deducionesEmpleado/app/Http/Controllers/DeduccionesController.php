<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Deducciones;

class DeduccionesController extends Controller
{
    //

    public function AplicarDeducion(Request $resquest){

        $instaciaDeducciones= new Deducciones;
        $instaciaDeducciones->fill(
        						['idDeducciones'=>null,
						         'dedu_IHSS'=>$resquest->deduccionIhss
						         'dedu_RAP'=>$resquest->deduccionRap,
						         'dedu_aportaciones'=>$resquest->deduccionAportacion,
						         'dedu_falta'=>$resquest->deducionFalta,
						         'idPermisos'=>$resquest->idPermiso,
						         'idPago'=>$resquest->idPago

						        ]);
        
        return $instaciaDeducciones->save();
        }

    public function VerDeducion(Request $resquest){
    	$instaciaDeducciones= new Deducciones;
    	return $instaciaDeducciones::where('idPago', $resquest->idPago)->get();


    }

    public function EliminarDeducion(Request $resquest){
    	$instaciaDeducciones= new Deducciones;
    	return $instaciaDeducciones::where('idPago', $resquest->idDeducion)->delete();


    }
}
