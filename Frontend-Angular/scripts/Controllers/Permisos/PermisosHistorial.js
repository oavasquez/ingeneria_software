'use strict'

angular.module('ProyectoISApp')
	.controller('PermisosHistorialController', ['$scope', '$location', '$timeout', '$cookies','$http', 'ResourcePermisosHistorial', 'CurrentSolicitudService',
                                function($scope, $location, $timeout, $cookies, $http, ResourcePermisosHistorial, CurrentSolicitudService
                                ){

    $scope.historialPermisos = [];
    $scope.buscarPermiso;
    $scope.datos = {
        codigoEmpleado: $cookies.get('CookieCuenta')
    }

	$scope.ObtenerPermisos = function(){
		ResourcePermisosHistorial.save($scope.datos, function(respuesta){
			for (var i=0; i<respuesta.length; i++){
                $scope.estado;
                
				$scope.historialPermisos.push({
                    codPermiso: respuesta[i].CodigoPermiso,
                    codEmpleado: respuesta[i].codigoEmpleado, 
                    nombreEmpleado: respuesta[i].nombreEmpleado,                    
                    dia: respuesta[i].diaPermiso,
                    estado: respuesta[i].estadoPermiso,
                    tipoPermiso: respuesta[i].tipoPermiso,
                    descripcion: respuesta[i].descripción                                     
                });

                if(respuesta[i].estadoPermiso == "1"){
                    $scope.historialPermisos[i].estado = "Aceptado";
                }else if(respuesta[i].estadoPermiso == "0"){
                    $scope.historialPermisos[i].estado = "Denegado";                    
                }else
                    $scope.historialPermisos[i].estado = "Esperando respuesta...";             
                
			}
		});
	}
    $scope.ObtenerPermisos();

    $scope.verSolicitud = function(item){
        console.log(item);
        CurrentSolicitudService.setCurrentSolicitud(item);
        $timeout(function (){ 
            $location.path('/Principal/Solicitudes/VerSolicitud'); 
        },1000);
    }
    
}]);
