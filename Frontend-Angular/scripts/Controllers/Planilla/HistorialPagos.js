'use strict'

angular.module('ProyectoISApp')
	.controller('HistorialPagosController', ['$scope','$cookies','$http', 'ResourceHistorialPagos',
								function($scope, $cookies, $http, ResourceHistorialPagos){

	console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));

	$scope.tipoCuenta = $cookies.get('CookieTipoCuenta');
    
	$scope.historialPagos = []; 

	function ObtenerPagos(){

		ResourceHistorialPagos.query({}, function(respuesta){
			console.log(respuesta);
			for (var i=0; i<respuesta.length; i++){
				$scope.historialPagos.push({
					codPago: respuesta[i].idPago,
					nombreEmpleado: respuesta[i].nombreEmpleado,
					fechaPago: respuesta[i].fechaPago,
					deducciones: respuesta[i].totalDeducciones,
					totalPago: respuesta[i].totalPago
				});
			}
		});	

	}

	ObtenerPagos();

}]);
