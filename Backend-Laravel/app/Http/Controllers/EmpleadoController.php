<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use App\Empleado;

class EmpleadoController extends Controller
{

	    public function EncontrarEmpleado(Request $resquest){

	        $codigoEmpleado=$resquest->codigo;
	        $instanciaEmpleado= new Empleado;
	        $listaEmpleados=$Empleado->mostrarEmpleado($codigoEmpleado); 	
	    	//$Empleados = DB::select("SELECT nombre FROM Empleado ");                  
	                                
	    	return $listaEmpleados;
	    	//return response()->json(['name' => 'Abigail','state' => 'CA']);
	     }

	    public function iniciarSesion(Request $resquest){
	        $instanciaEmpleado= new Empleado;
	        return json_encode($instanciaEmpleado->iniciarSesion($resquest)); 	
	    	//$Empleados = DB::select("SELECT nombre FROM Empleado ");               
		}

	      public function obtenerSuperiores(Request $resquest) {

	      	$instanciaEmpleado= new Empleado;
	    	return $instanciaEmpleado->obtenerSuperiores($resquest); 
        
      
 		   }


	    public function obtenerDatosEmpleado(Request $resquest) {

	    	 $instanciaEmpleado= new Empleado;
	    	 return $instanciaEmpleado::where('idCargo', $resquest->codigoEmpleado)->get();
	    	}



		public function guardarDatosEmpleado(Request $resquest) {
		 	$instanciaEmpleado= new Empleado;
	        $instanciaEmpleado->fill(
	        						['idEmpleado'=>null,
							         'nombre'=>$resquest->nombre,
							         'apellido'=>$resquest->apellido,
							         'identidad'=>$resquest->identidad,
							         'genero'=>null,
							         'edad'=>null,
							         'fecha_nacimiento'=>null,
							         'telefono'=>$resquest->telefono,
							         'correo'=>$resquest->correo,
							         'direccion'=>$resquest->direccion,
							         'cod_empleado'=>null,
							         'idCargo'=>$resquest->idCargo,
							         'idEncargado'=>$resquest->codigoEncargado,
							         'idContrato'=>null
							        ]);
	        
	        return $instanciaEmpleado->save();
		      
		    }

		public function eliminarEmpleado(Request $resquest) {

			$instanciaEmpleado= new Empleado;
	    	return $instanciaEmpleado::where('idEmpleado', $resquest->codigoEmpleado)->delete();
		    }
/*
		public function modificarEmpleado(Request $resquest) {

			$instanciaEmpleado= new Empleado;
	    	return $instanciaEmpleado::where('cod_empleado', $resquest->codigoEmpleado)->update([
							         'nombre'=>				$resquest->nombre,
							         'apellido'=>			$resquest->apellido,
							         'identidad'=>			$resquest->identidad,
							         'genero'=>				$resquest->genero,
							         'edad'=>				$resquest->edad,
							         'fecha_nacimiento'=>	$resquest->nombre,
							         'telefono'=>			$resquest->telefono,
							         'correo'=>				$resquest->correo,
							         'direccion'=>			$resquest->direccion,
							         'cod_empleado'=>		$resquest->codigoEmpleado,
							         'idCargo'=>			$resquest->idCargo,
							         'idEncargado'=>		$resquest->idEncargado,
							         'idContrato'=>			$resquest->contrato
							        ]);
			}
			*/
}


