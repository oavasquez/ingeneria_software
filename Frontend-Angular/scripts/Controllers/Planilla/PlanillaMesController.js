'use strict'

angular.module('ProyectoISApp')
	.controller('PlanillaMesController', ['$scope', '$location', '$timeout', '$cookies','$http', 'ResourcePlanillaMes',
								function($scope, $location, $timeout, $cookies, $http, ResourcePlanillaMes){

								
	$scope.cuentaLogueadaDesdeInicio = $cookies.get('CookieCuenta');
	$scope.tipoCuenta = $cookies.get('CookieTipoCuenta');
	$scope.buscarPlanilla;
	$scope.historialPlanilla = [];

	$scope.ObtenerPlanillaMes = function(){
		ResourcePlanillaMes.query({}, function(respuesta){
			for (var i=0; i<respuesta.length; i++){
				$scope.historialPlanilla.push({
					codigoEmpleado: respuesta[i].codigoEmpleado,
					nombreEmpleado: respuesta[i].nombreEmpleado,
					cargo: respuesta[i].cargo,
					totalDeducciones: respuesta[i].totalDeducciones,
					totalPago: respuesta[i].totalPago
				});
			}
		});
	}

	$scope.ObtenerPlanillaMes();

}]);
