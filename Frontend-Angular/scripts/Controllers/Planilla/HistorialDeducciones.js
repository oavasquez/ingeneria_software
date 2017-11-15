'use strict'

angular.module('ProyectoISApp')
	.controller('HistorialDeduccionesController', ['$scope','$cookies','$http', 'ResourceHistorialDeducciones',
								function($scope, $cookies, $http, ResourceHistorialDeducciones){

	console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));

	$scope.tipoCuenta = $cookies.get('CookieTipoCuenta');
    
	$scope.historialDeducciones = []; 


	function obtenerDeducciones(){

		ResourceHistorialDeducciones.query({}, function(respuesta){
			console.log(respuesta);
			for (var i=0; i<respuesta.length; i++){
				$scope.historialDeducciones.push({
					codDeduccion: respuesta[i].idDeducciones,
					nombre: respuesta[i].nombreEmpleado,
					deduccionIHSS: respuesta[i].deduccionIHSS,
					deduccionRAP: respuesta[i].deduccionRAP,
					deduccionesAport: respuesta[i].deducionesAportaciones
				});
			}
		});	

	}

	obtenerDeducciones();

}]);
