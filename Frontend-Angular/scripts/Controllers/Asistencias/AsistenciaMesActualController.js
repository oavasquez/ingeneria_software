'use strict'

angular.module('ProyectoISApp')
	.controller('AsistenciaMesController', ['$scope', '$location', '$timeout', '$cookies','$http', 'ResourceAsistenciaMesActual',
								function($scope, $location, $timeout, $cookies, $http, ResourceAsistenciaMesActual){

								
	console.log("Cuenta Logueada: " + $cookies.get('CookieCuenta') + "  tipoCuenta:"+ $cookies.get('CookieTipoCuenta'));

	$scope.historialAsistenciaMes = [];
	$scope.buscarAsistencia;
    
	$scope.ObtenerAsistencias = function(){
		ResourceAsistenciaMesActual.query({}, function(respuesta){
			console.log(respuesta);
			for (var i=0; i<respuesta.length; i++){
				$scope.historialAsistenciaMes.push({
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
