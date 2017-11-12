<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use App\Contrato;

class ContratoController extends Controller
{

   	public function encontrarContrato(Request $resquest){

        //$codigoContrato=$resquest->codigo;
        $instanciaContrato= new Contrato;
        return $instanciaContrato->mostrarContrato($resquest);
        //$listaContratos=$contrato->mostrarContrato($codigoContrato); 	
        //return $contrato::where('idContrato',$resquest->idContrato)->get();                
    	//return $listaContratos;
    	
        }


    public function modificarContrato(Request $resquest) {
     	$contrato = new contrato;
        return $contrato::where('idContrato',$resquest->idContrato)
        				  ->update(['TipoContrato'=>$resquest->tipoContrato,
						         	'horaEntrada'=>$resquest->horaEntrada,
						        	'horaSalida'=>$resquest->horaSalida,
						         	'diasDeTrabajo'=>$resquest->dias,
						         	'fechaContratacion'=>$resquest->fechaContratacion,
						         	'sueldo'=>$resquest->sueldo
						         	]);      

    }

?>
