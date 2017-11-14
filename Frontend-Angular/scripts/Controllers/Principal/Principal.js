'use strict'

angular.module('ProyectoISApp')
	.controller('PrincipalControllerr', ['$scope', '$location', '$timeout', '$cookies','$http', 'ResourceCuentaLogueada',
								function($scope, $location, $timeout, $cookies, $http, ResourceCuentaLogueada){

								
	$scope.cuentaLogueadaDesdeInicio = $cookies.get('CookieCuenta');
	$scope.tipoCuenta = $cookies.get('CookieTipoCuenta');

	console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));

	$scope.cargarDatosUsuarioLogueado = function (){
		if($scope.tipoCuenta != "Empleado"){
			$scope.ocultarBotonEmpleado = true;
		}else{
			$scope.ocultarBotonEmpleado = false;			
		}
	}

	$scope.cargarDatosUsuarioLogueado();

	}]);
