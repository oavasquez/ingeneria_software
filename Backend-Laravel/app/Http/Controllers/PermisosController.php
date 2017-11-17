<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

use App\Permiso;

class PermisosController extends Controller
{

     public function guardarPermiso(Request $resquest){

        //$codigoEmpleado=$resquest->codigo;
        $instanciaPermiso= new Permiso;
        return $instanciaPermiso->guardarPermiso($resquest); 	
    	
        }

      public function aprobarPermiso(Request $resquest){

      	$instanciaPermiso= new Permiso;
        //$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
        if( $instanciaPermiso::where('idPermisos', $resquest->idPermiso)->update(['estadoPermiso' => 1]) )
          return "True";
        else
          return "Error";
      }

      public function permisosHistorial(Request $resquest){

        //$codigoEmpleado=$resquest->codigo;
        $instanciaPermiso= new Permiso;
        return $instanciaPermiso->permisosHistorial($resquest);
      }

      public function permisosSinLeer(Request $resquest){
        //$codigoEmpleado=$resquest->codigo;
        $instanciaPermiso= new Permiso;
        return $instanciaPermiso->permisosSinLeer($resquest);
      }      

      public function denegarPermiso(Request $resquest){

        $instanciaPermiso= new Permiso;
        
        if( $instanciaPermiso::where('idPermisos', $resquest->idPermiso)->update(['estadoPermiso' => 0]) )
          return "True";
        else
          return "Error";
      }

      public function verPermiso(Request $resquest){

      	$instanciaPermiso= new Permiso;
      	//$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
      	return $instanciaPermiso::where('idPermisos', $resquest->idPermiso)->get();

      }
/*
      public function eliminarPermiso(Request $resquest){

        $instanciaPermiso= new Permiso;
        //$instanciaPermiso->aprobarPermiso($resquest->idpermiso);
        return $instanciaPermiso::where('idPermisos', $resquest->idpermiso)->delete();

      }
*/

    
    
    
 

}
