<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Permiso;

class PermisosController extends Controller
{
    //


     public function guardarPermiso(Request $resquest){

        $codigoEmpleado=$resquest->codigo;
        $instanciaPermiso= new Permiso;
        $instanciaPermiso->fill(['idPermisos'=>null,
								 'descrip_permiso'=>$resquest->descripcion,
								 'fecha_inicio'=>$resquest->fechaIicios,
								 'fecha_final'=>$resquest->fechaInicios,
								 'num_dias'=>$resquest->numDias,
								 'idTipo_Permiso'=>$resquest->idTPermiso,
								 'idEmpleado'=>$resquest->idEmpleado,
								 'idResposable'=>$resquest->idResposable,
								 'estadoPermiso'=>null
								]);
        
        return $instanciaPermiso->save();
        	
    	
        }

      public function aprobarPermiso(Request $resquest){

      	$instanciaPermiso= new Permiso;
      	//$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instanciaPermiso::where('destination', $resquest->idpermiso)
				          ->update(['estadoPermiso' => 1]);



      }

      public function denegarPermiso(Request $resquest){

      	$instanciaPermiso= new Permiso;
      	//$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instanciaPermiso::where('idPermisos', $resquest->idpermiso)
      							->update(['estadoPermiso' => 0]);



      }

      public function verPermiso(Request $resquest){

      	$instanciaPermiso= new Permiso;
      	//$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instanciaPermiso::where('idPermisos', $resquest->idpermiso)->get();

      }
/*
      public function eliminarPermiso(Request $resquest){

        $instanciaPermiso= new Permiso;
        //$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
        return $instanciaPermiso::where('idPermisos', $resquest->idpermiso)->delete();

      }
*/

    
    
    
 

}
