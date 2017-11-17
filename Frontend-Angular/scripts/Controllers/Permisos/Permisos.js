'use strict'

angular.module('ProyectoISApp')
	.controller('PermisosController', ['$scope', '$location', '$timeout', '$cookies','$http', 'ResourcePermisosHistorial',
								function($scope, $location, $timeout, $cookies, $http, ResourcePermisosHistorial
	){

		console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));
		$scope.tipoCuenta = $cookies.get('CookieTipoCuenta');
	
		function cargarDatosUsuarioLogueado (){
			if( $scope.tipoCuenta != 'Empleado'){
			$scope.mostrarEmpleado = false;
			$scope.mostrarAdmin = true;
			}else{
			$scope.mostrarEmpleado = true;			
			$scope.mostrarAdmin = false;            
			}
		}

		cargarDatosUsuarioLogueado();

}]);
