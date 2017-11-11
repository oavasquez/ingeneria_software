<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pago;

use Illuminate\Support\Facades\DB;
use App\Pago;

class PlanillaController extends Controller
{
    //

    	public function verSueldo(Request $resquest){
    		$instanciaPago = new Pago;
    		return $instanciaPago::where('fecha_pago',$resquest->fechaPago)
    							   ->where('idEmpleado',$resquest->idEmpleado)->get();




        }
        public function calcularSueldo(Request $resquest){
        	$instanciaPago = new Pago;
        	$sueldoTotal = $instanciaPago->calcularSueldo();
            $instanciaPago::where('idEmpleado',$resquest->idEmpleado)
                            ->where('fecha_pago',$resquest->fechaPago)
                            ->update(['total_pago'=>$sueldoTotal->sueldoTotal])
            return $sueldoTotal;

        }
        
        public function verPlanilla(Request $resquest){
            


        }
        public function guardarPlanilla(Request $resquest){

        }
}
