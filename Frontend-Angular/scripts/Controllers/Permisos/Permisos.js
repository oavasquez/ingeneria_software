'use strict'

angular.module('ProyectoISApp')
	.controller('PermisosController', ['$scope', '$location', '$timeout', '$cookies','$http', 
								function($scope, $location, $timeout, $cookies, $http){

	console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));
    $scope.tipoCuenta = $cookies.get('CookieTipoCuenta');
    
	function cargarDatosUsuarioLogueado (){
		if( $scope.tipoCuenta != 'Empleado'){
            $scope.mostrarBotonEmpleado = false;
            $scope.mostrarBotonAdmin = true;
		}else{
            $scope.mostrarBotonEmpleado = true;			
            $scope.mostrarBotonAdmin = false;            
		}
	}

	cargarDatosUsuarioLogueado();

	}]);
