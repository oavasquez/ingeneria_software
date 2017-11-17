'use strict'

angular.module('ProyectoISApp')
	.controller('BuscarContratoController', ['$scope','$cookies','$http', 'ResourceBuscarContrato',
								function($scope, $cookies, $http, ResourceBuscarContrato){

	console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));

	$scope.tipoCuenta = $cookies.get('CookieTipoCuenta');
    
	$scope.empleado = {}; 
	
	$scope.datos = {
		codigoEmpleado: 0
	}

	$scope.buscarContrato = function(value){
		console.log("Codigo contrato:" + $scope.datos.codigoEmpleado);

		ResourceBuscarContrato.save($scope.datos, function(respuesta){
			//console.log(respuesta);
			if(respuesta[0] != undefined){
				$scope.empleado= {
					codigoEmpleado: 	respuesta[0].codigoEmpleado,
					nombreEmpleado: 	respuesta[0].nombreEmpleado,
					cargo: 				respuesta[0].cargo,
					sueldo: 			respuesta[0].sueldo,
					horaEntrada: 		respuesta[0].horaEntrada,
					horaSalida: 		respuesta[0].horaSalida				
				}
			}else{
				alert("No existe Contrato con ese codigo.");
				limpiarComponentes();
			}

		});	

	}

	function limpiarComponentes(){
	 	$scope.empleado = {};
	 	$scope.empleado.codigoEmpleado = undefined;
	 	$scope.empleado.nombreEmpleado = undefined;
	 	$scope.empleado.cargo = undefined;
	 	$scope.empleado.sueldo = undefined;
	 	$scope.empleado.horaEntrada = undefined;
	 	$scope.empleado.horaSalida = undefined;	 	
	}


}]);
