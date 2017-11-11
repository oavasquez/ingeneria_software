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


	    public function obtenerDatosEmpleado(Request $resquest) {

	    	 $instanciaEmpleado= new Empleado;
	    	 return $instanciaEmpleado::where('cod_empleado', $resquest->codigoEmpleado)->get();
	    	}



		public function guardarDatosEmpleado(Request $resquest) {
		 	$instanciaEmpleado= new Empleado;
	        $instanciaEmpleado->fill(
	        						['idEmpleado'=>null,
							         'nombre'=>$resquest->nombre,
							         'apellido'=>$resquest->apellido,
							         'identidad'=>$resquest->identidad,
							         'genero'=>$resquest->genero,
							         'edad'=>$resquest->edad,
							         'fecha_nacimiento'=>$resquest->nombre,
							         'telefono'=>$resquest->telefono,
							         'correo'$resquest->correo,
							         'direccion'$resquest->direccion,
							         'cod_empleado'$resquest->codigoEmpleado,
							         'idCargo'=>$resquest->idCargo,
							         'idEncargado'=>$resquest->idEncargado,
							         'idContrato'=>$resquest->contrato
							        ]);
	        
	        return $instanciaEmpleado->save();
		      
		    }

		public function eliminarEmpleado(Request $resquest) {

			$instanciaEmpleado= new Empleado;
	    	return $instanciaEmpleado::where('cod_empleado', $resquest->codigoEmpleado)->delete();


		      
		    }

		public function modificarEmpleado(Request $resquest) {

			$instanciaEmpleado= new Empleado;
	    	return $instanciaEmpleado::where('cod_empleado', $resquest->codigoEmpleado)->update([
							         'nombre'=>$resquest->nombre,
							         'apellido'=>$resquest->apellido,
							         'identidad'=>$resquest->identidad,
							         'genero'=>$resquest->genero,
							         'edad'=>$resquest->edad,
							         'fecha_nacimiento'=>$resquest->nombre,
							         'telefono'=>$resquest->telefono,
							         'correo'$resquest->correo,
							         'direccion'$resquest->direccion,
							         'cod_empleado'$resquest->codigoEmpleado,
							         'idCargo'=>$resquest->idCargo,
							         'idEncargado'=>$resquest->idEncargado,
							         'idContrato'=>$resquest->contrato
							        ]);
		    }
}


