'use strict'

angular.module('ProyectoISApp')
	.controller('PrincipalController', ['$scope', '$location', '$timeout', '$cookies','$http', 
										'ResourceCuentaLogueada',
								function($scope, $location, $timeout, $cookies, $http,
										 ResourceCuentaLogueada){

								
	$scope.cuentaLogueadaDesdeInicio = $cookies.get('CookieCuentaLogueada');


	$scope.usuarioLogueado;

	$scope.ocultarBotonPerfilUsuario = true;
	$scope.ocultarBotonPerfilLugar = true;
	var tipoCuentaLogueada = $cookies.get('CookieTipoCuentaLogueada');

	function cargarDatosUsuarioLogueado(){

		ResourcePrincipalDatosUsuarioLogueado.get({id: $cookies.get('CookieCuentaLogueada')}, function(respuesta){
			$scope.usuarioLogueado = respuesta.cuenta;
			
			//tipocuenta es con numero 1: Visitante, 2
			if($scope.usuarioLogueado.tipoCuenta == 1){
				$scope.ocultarBotonPerfilUsuario = true;
				$scope.ocultarBotonPerfilLugar = false;
			}
			if($scope.usuarioLogueado.tipoCuenta == 2){
				$scope.ocultarBotonPerfilUsuario = false;
				$scope.ocultarBotonPerfilLugar = true;
			}

		});
		
	}

	function changeCSSProperties(){
		$("#body").removeClass("sidebar-mini");
		$("#body").removeClass("skin-black");
		$("#body").addClass("login-page");                       
		$("#MasterContent").removeClass("wrapper");   
	}
	changeCSSProperties();

//		cargarDatosUsuarioLogueado();

/*
		$scope.cargarLugaresTuristicos = function(){
			ResourcePrincipalLugaresPreferidos.get(function(respuesta){
				for(var i=0; i<respuesta.categorias.length; i++){
					for(var j=0; j<respuesta.categorias[i].mejoresLugares.length; j++){
						$scope.DB_listaLugaresTuristicos.push({codigoLugar: respuesta.categorias[i].mejoresLugares[j].codigoLugar,
															  nombreCategoria: respuesta.categorias[i].nombreCategoria,
															  nombre: respuesta.categorias[i].mejoresLugares[j].nombreLugar,
															  nivelRecomendacion: respuesta.categorias[i].mejoresLugares[j].nivelRecomendacion,
															  direccion: respuesta.categorias[i].mejoresLugares[j].nombreUbicacion,
															  visitas:  respuesta.categorias[i].mejoresLugares[j].cantidadVisitas, 
															  seguidores:  respuesta.categorias[i].mejoresLugares[j].cantidadSeguidores,
															  likes:  respuesta.categorias[i].mejoresLugares[j].cantidadLikes,
															  imagenLogo: respuesta.categorias[i].mejoresLugares[j].imagenLogo,
															  imagenBanner: respuesta.categorias[i].mejoresLugares[j].imagenBanner}
															  );
					}
				}
			});
		}
*/

/*
Ejemplo de trato de data
		function cargarCategoriaLugares(){
			ResourcePrincipalCategorias.get(function(respuesta){
				for(var i=0; i<respuesta.categorias.length; i++){
					$scope.categoriasLugares.push( {nombreCategoria: respuesta.categorias[i].nombreCategoria, codigoCategoria: respuesta.categorias[i].codigoCategoria , icono: 'glyphicon glyphicon-check'});
				}
			});
		}
*/
//		cargarCategoriaLugares();


	}]);
