<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use App\Contrato;

class ContratoController extends Controller
{

    public function EncontrarContrato(Request $resquest){

        $codigoContrato=$resquest->codigo;
        $contrato= new contrato;
        $listaContratos=$contrato->mostrarContrato($codigoContrato); 	
  
                                    
                                
    	return $listaContratos;
    	
        }
    
    }

?>
