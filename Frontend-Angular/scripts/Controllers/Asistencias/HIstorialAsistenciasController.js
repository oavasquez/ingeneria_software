'use strict'

angular.module('ProyectoISApp')
	.controller('HistorialAsistenciasController', ['$scope', '$location', '$timeout', '$cookies','$http', 'ResourceObtenerAsistencias',
								function($scope, $location, $timeout, $cookies, $http, ResourceObtenerAsistencias){

								
	console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));

    $scope.historialAsistencias = [];
    
	$scope.ObtenerAsistencias = function(){
		ResourceObtenerAsistencias.query({}, function(respuesta){
			console.log(respuesta);
			for (var i=0; i<respuesta.length; i++){
				$scope.historialAsistencias.push({
					nombreEmpleado: respuesta[i].nombreEmpleado,
					fecha: respuesta[i].fechaAsistencia,
					horaEntrada: respuesta[i].horaEntrada,
					horaSalida: respuesta[i].horaSalida,
					estado: respuesta[i].estadoAsistencia
				});
			}
		});
	}
    $scope.ObtenerAsistencias();

}]);
