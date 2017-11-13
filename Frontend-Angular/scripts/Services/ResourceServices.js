'use strict';

angular.module('ProyectoISApp')

	//Funcionando
	.factory('ResourceInicioSesionValidar', function($resource){
		return $resource("http://localhost:8000/iniciarSesion/");
	})
	
	//Incompleto el SQL
	.factory('ResourceRegistrarEmpleado', function($resource){
		return $resource("http://localhost:8000/guardarDatosEmpleado");
	})

	//Error: 500 (Internal Server Error)
	.factory('ResourceBuscarContrato', function($resource){
		return $resource("http://localhost:8000/encontrarContrato");
	})

	//Error: 500 (Internal Server Error)
	.factory('ResourcePlanillaMes', function($resource){
		return $resource("http://localhost:8000/verPlanilla");
	})	

	//Funcionando
	.factory('ResourceHistorialDeducciones', function($resource){
		return $resource("http://localhost:8000/verDeduccion");
	})		

	//Funcionando
	.factory('ResourceHistorialPagos', function($resource){
		return $resource("http://localhost:8000/historialPagos");
	})		
	
	//Funcionando
	.factory('ResourceObtenerSuperiores', function($resource){
		return $resource("http://localhost:8000/obtenerSuperiores");
	})	

	//Funcionando
	.factory('ResourceGuardarPermiso', function($resource){
		return $resource("http://localhost:8000/guardarPermiso");
	})

	/*
	Ejemplo con varios parametros
	//RESOURCES a utilizarse por Brizo
		//10	Route::get('PerfilLugar/lugar','PerfilLugar@showLugar');
		.factory('ResourceMostrarPerfilLugar', function($resource){
			return $resource("http://localhost:8000/PerfilLugar/lugar", { },
				{
					get: {
						url: "http://localhost:8000/PerfilLugar/lugar/:codigoCuenta/visitante/:codigoVisitante", 
						method: "GET", 
						params: {codigoCuenta: '@codigoCuenta', codigoVisitante: '@codigoVisitante'} 
					} 				
				});
		})
	*/
	/*
	Ejemplo con un parametro
		//11	Route::post('PerfilLugar/seguir','PerfilLugar@storeSeguir');
		.factory('ResourceRegistrarSeguimiento', function($resource){
			return $resource("http://localhost:8000/PerfilLugar/seguir/:id", {id: "@id"});
		})
	*/
	/*
	Ejemplo con update
		//	Route::put('PerfilLugar/Configuracion/Informacion/cat','PerfilLugar@updateCategoria');
		.factory('ResourceConfLugarInformacionCat', function($resource){
			return $resource("http://localhost:8000/PerfilLugar/Configuracion/Informacion/cat/:id", {	id: "@id" }, { update: {method: "PUT"} });
		})
	*/


;//Final del angular.module


















