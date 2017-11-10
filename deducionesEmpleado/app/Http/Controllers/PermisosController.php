<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Permiso;

class PermisosController extends Controller
{
    //


     public function guardarPermiso(Request $resquest){

        $codigoEmpleado=$resquest->codigo;
        $instaciaPermiso= new Permiso;
        $instaciaPermiso->fill(['idPermisos'=>null,
								 'descrip_permiso'=>$resquest->descripcion,
								 'fecha_inicio'=>$resquest->fechaIicios,
								 'fecha_final'=>$resquest->fechaInicios,
								 'num_dias'=>$resquest->numDias,
								 'idTipo_Permiso'=>$resquest->idTPermiso,
								 'idEmpleado'=>$resquest->idEmpleado,
								 'idResposable'=>$resquest->idResposable,
								 'estadoPermiso'=>null
								]);
        
        return $instaciaPermiso->save();
        	
    	
        }

      public function aprobarPermiso(Request $resquest){

      	$instaciaPermiso= new Permiso;
      	//$instaciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instaciaPermiso::where('destination', $resquest->idpermiso)
				          ->update(['estadoPermiso' => 1]);



      }

      public function denegarPermiso(Request $resquest){

      	$instaciaPermiso= new Permiso;
      	//$instaciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instaciaPermiso::where('idPermisos', $resquest->idpermiso)
      							->update(['estadoPermiso' => 0]);



      }

      public function verPermiso(Request $resquest){

      	$instaciaPermiso= new Permiso;
      	//$instaciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instaciaPermiso::where('idPermisos', $resquest->idpermiso)->get();

      }

    
    
    
 

}
