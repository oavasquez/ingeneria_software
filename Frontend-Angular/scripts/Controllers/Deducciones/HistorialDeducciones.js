'use strict'

angular.module('ProyectoISApp')
	.controller('HistorialDeduccionesController', ['$scope', '$location', '$timeout', '$cookies','$http', 'ResourceHistorialDeducciones',
								function($scope, $location, $timeout, $cookies, $http, ResourceHistorialDeducciones){

	console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));

	$scope.tipoCuenta = $cookies.get('CookieTipoCuenta');
    
	$scope.historialDeducciones = []; 
	console.log("HOLA");
	//VER DEDUCCIONES
	function ObtenerHistorialDeducciones(){
		ResourceHistorialDeducciones.get({}, function(respuesta){
			for(var i=0; i<respuesta.length; i++){
				$scope.historialDeducciones.push({
					codDeduccion: respuesta[i].idDeducciones,
					nombreEmpleado: respuesta[i].nombreEmpleado,
					deduccionIHSS: respuesta[i].deduccionIHSS,
					deduccionRAP: respuesta[i].deduccionRAP,
					deduccionesAport: respuesta[i].deducionesAportaciones
				});
			}
		});	
	}

	console.log($scope.historialDeducciones);
	ObtenerHistorialDeducciones();

}]);
