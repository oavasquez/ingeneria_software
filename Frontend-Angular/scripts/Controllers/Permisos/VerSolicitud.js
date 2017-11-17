'use strict'

angular.module('ProyectoISApp')
	.controller('VerSolicitudController', ['$scope', '$location', '$timeout', '$cookies','$http', 'CurrentSolicitudService', 'ResourceDenegarPermiso', 'ResourceAprobarPermiso',
								function($scope, $location, $timeout, $cookies, $http, CurrentSolicitudService, ResourceDenegarPermiso, ResourceAprobarPermiso
	){
        $scope.currentSolicitud = CurrentSolicitudService.getCurrentSolicitud();

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

    $scope.datos = {
        idPermiso: $scope.currentSolicitud.codPermiso
    }

	//APROBAR PERMISO
	$scope.aprobarSolicitud = function(){
		ResourceAprobarPermiso.save($scope.datos, function(respuesta){
            if(respuesta[0] == "T"){
                alert("Se ha aprobado la solicitud Exitosamente.");
            }else{
                alert("Ocurrió un error al aprobar solicitud. Intente de nuevo luego.");        
            }
            $timeout(function (){ 
                $location.path('/Principal/Solicitudes/PermisosExistentes'); 
            },500);
        });
	}

	//DENEGAR PERMISO
	$scope.denegarSolicitud = function(){
		ResourceDenegarPermiso.save($scope.datos, function(respuesta){
            if(respuesta[0] == "T"){
                alert("Se ha denegado la solicitud Exitosamente.");
            }else{
                alert("Ocurrió un error al denegar solicitud. Intente de nuevo luego.");        
            }
            $timeout(function (){ 
                $location.path('/Principal/Solicitudes/PermisosExistentes'); 
            },500);
        });
	}

}]);
