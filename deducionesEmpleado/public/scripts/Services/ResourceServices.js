'use strict';

angular.module('ProyectoISApp')

	// 1.	Route::post('InicioSesion/validar','InicioSesion@storeValidar');
	.factory('ResourceInicioSesionValidar', function($resource){
		return $resource("http://localhost:8000/InicioSesion/validar");
	})
	
	// Route::post('RegistroVisitante/verificar', 'RegistroVisitante@storeVerificar');
	.factory('ResourceRegistroVerificar', function($resource){
		return $resource("http://localhost:8000/Registro/verificar");
	})

	// 3.	Route::post('RegistroVisitante/registro','RegistroVisitante@storeRegistro');
	.factory('ResourceRegistrarse', function($resource){
		return $resource("http://localhost:8000/Registrarse/registro");
	})

	//5.	Route::get('Principal/login','Principal@showLogin');
	.factory('ResourceCuentaLogueada', function($resource){
		return $resource("http://localhost:8000/Principal/login/:id", {id: "@id"});
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


















