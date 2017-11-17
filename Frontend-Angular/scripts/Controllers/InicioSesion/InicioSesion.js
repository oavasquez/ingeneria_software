'use strict'

angular.module('ProyectoISApp')

	.controller('InicioSesionController', ['$scope','$location','$http','$timeout','$cookies',
											'ResourceInicioSesionValidar', 'ResourceBuscarContrato', 'ResourceRegistrarEmpleado', 'ResourcePlanillaMes',
											'ResourceHistorialPagos', 'ResourceObtenerSuperiores', 'ResourceAsistenciaMesActual',
											'ResourceGuardarPermiso', 'ResourcePermisosSinLeer', 'ResourceObtenerAsistencias', 'ResourceAprobarPermiso', 'ResourceDenegarPermiso',
											'InicializarCookies',
											function($scope, $location, $http ,$timeout,$cookies,
											 ResourceInicioSesionValidar, ResourceBuscarContrato, ResourceRegistrarEmpleado, ResourcePlanillaMes,
											 ResourceHistorialPagos, ResourceObtenerSuperiores, ResourceAsistenciaMesActual,
											 ResourceGuardarPermiso, ResourcePermisosSinLeer, ResourceObtenerAsistencias, ResourceAprobarPermiso, ResourceDenegarPermiso,
											 InicializarCookies){
	 
	//Atributos necesarios
	$scope.mostrarMensajeError = false; //Con esta variable se controla la visibilidad del mensaje de error
	$scope.user = {};

	$scope.ProbandoRegistrarEmpleado = function(){
		$scope.datos = {
			nombre: "nombre",
			apellido: "apellido",
			codigoEncargado: 1,
			identidad: "0101123498765",
			fechaNacimiento: "1992/04/09",
			telefono: "99887766",
			correo: "abc@gmail.com",
			direccion: "abcd",
			idCargo: 1
		}

		ResourceRegistrarEmpleado.save($scope.datos, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);				
			}else{
				alert("ERROR");				
			}
		});
	}
	//$scope.ProbandoRegistrarEmpleado();	

	//OBTENER SUPERIORES
	$scope.ProbandoObtenerSuperiores = function(){
		$scope.datos = {
			codigoEmpleado: 1234
		}
		ResourceObtenerSuperiores.save({}, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR obtenerSuperiores");
			}
		});
	}
	$scope.ProbandoObtenerSuperiores();	

	//GUARDAR PERMISO
	$scope.ProbandoGuardarPermiso = function(){
		$scope.datos = {
			codigoEmpleado: 1,
			codigoSuperior: 1234,
			diaPermiso: "2017-11-25",
			tipoPermiso: 1,
			descripcion: "Porque quiero..."
		}
		ResourceGuardarPermiso.save($scope.datos, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				//alert("ERROR guardarPermiso");
			}
		});
	}
	$scope.ProbandoGuardarPermiso();	
	
	$scope.verifyUser = function(nombreUsuario, contrasenia){
		console.log("Iniciar Sesion: " + "usuario: "+ nombreUsuario +"  pass:"+ contrasenia);

		if(nombreUsuario!=undefined && contrasenia!=undefined){
			var usuario = {
				nombreUsuario: nombreUsuario,
				contrasenia: contrasenia
			};		

			ResourceInicioSesionValidar.save(usuario, function(respuesta){

				if(respuesta[0] != undefined){
						//Guardamos los valores en las cookies CookieTipoCuentaLogueada						
						$cookies.put('CookieCuenta', respuesta[0].codigoUsuario); 
						$cookies.put('CookieTipoCuenta', respuesta[0].cargo);
						$cookies.put('CookieNombreUsuario', respuesta[0].nombreUsuario);						

						alert("Bienvenido "+respuesta[0].nombreUsuario);

						$timeout(function (){ 
							$location.path('/Principal'); 
						},1000);
					}
					else{
						alert("Usuario o contraseña incorrecta. Intente de nuevo.");
						$scope.mostrarMensajeError = true; 
						limpiarComponentes();						
					}
			});
		}
	 }

	 function limpiarComponentes(){
	 	$scope.user = {};
	 	$scope.user.nombreUsuario = undefined;
	 	$scope.user.contrasenia = undefined;
	 }

	}]);
