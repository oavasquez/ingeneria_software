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
        $instaciaEmpleado= new Empleado;
        $listaEmpleados=$instaciaEmpleado->mostrarEmpleado($codigoEmpleado); 	
    	//$Empleados = DB::select("SELECT nombre FROM Empleado ");
                                    
                                
    	return $listaEmpleados;
    	 //return response()->json(['name' => 'Abigail','state' => 'CA']);
        }
    
    }

?>
