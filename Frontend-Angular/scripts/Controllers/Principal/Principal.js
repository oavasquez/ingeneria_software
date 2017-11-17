'use strict'

angular.module('ProyectoISApp')
	.controller('PrincipalControllerr', ['$scope', '$location', '$timeout', '$cookies','$http', 'ResourcePermisosSinLeer',
								function($scope, $location, $timeout, $cookies, $http, ResourcePermisosSinLeer){

								
	$scope.cuentaLogueadaDesdeInicio = $cookies.get('CookieCuenta');
	$scope.tipoCuenta = $cookies.get('CookieTipoCuenta');
	$scope.permisosPendientes = 0;

	$scope.Cuenta = {
		codigoEmpleado: $cookies.get('CookieCuenta'),
		cargo: $cookies.get('CookieTipoCuenta'),
		nombreUsuario: $cookies.get('CookieNombreUsuario')
	}

	$scope.cargarDatosUsuarioLogueado = function (){
		if( $scope.tipoCuenta != 'Empleado'){
            $scope.mostrarEmpleado = false;
            $scope.mostrarAdmin = true;
		}else{
            $scope.mostrarEmpleado = true;			
            $scope.mostrarAdmin = false;            
		}
	}

	$scope.ObtenerPermisosSinLeer = function(){
		
		if($cookies.get('CookieTipoCuenta') != "Empleado"){
			$scope.datos = {
				codigoEmpleado: $cookies.get('CookieCuenta')
			}
			ResourcePermisosSinLeer.save($scope.datos, function(respuesta){
				if(respuesta[0] != undefined){
					$scope.permisosPendientes = respuesta[0];
					console.log($scope.permisosPendientes);					
				}else{
					alert("ERROR permisosSinLeer");
				}
			});	
		}

	}

	$scope.goToSolicitudesExistentes = function(){
		$timeout(function (){ 
			$location.path('/Principal/Solicitudes/PermisosExistentes'); 
		},1000);
	}

	$scope.cargarDatosUsuarioLogueado();
	$scope.ObtenerPermisosSinLeer();		

}]);
