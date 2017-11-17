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

	//BUSCAR CONTRATO
	$scope.ProbandoBuscarContrato = function(){
		$scope.datos = {
			codigoEmpleado: 1234
		}
		ResourceBuscarContrato.save($scope.datos, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR");
			}
		});
	}
	$scope.ProbandoBuscarContrato();

	//VER PLANILLA MES
	$scope.ProbandoVerPlanillaMes = function(){
		$scope.datos = {
			codigoEmpleado: 1234
		}
		ResourcePlanillaMes.query({}, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR");
			}
		});
	}
	$scope.ProbandoVerPlanillaMes();
	

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

	//PERMISOS SIN LEER
	$scope.ProbandoPermisosSinLeer = function(){
		$scope.datos = {
			codigoEmpleado: 1234
		}
		ResourcePermisosSinLeer.save($scope.datos, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR permisosSinLeer");
			}
		});
	}
	$scope.ProbandoPermisosSinLeer();	

	//OBTENER ASISTENCIAS
	$scope.ProbandoObtenerAsistencias = function(){
		$scope.datos = {
			codigoEmpleado: 1234
		}
		ResourceObtenerAsistencias.get({}, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR obtenerAsistencias");
			}
		});
	}
	$scope.ProbandoObtenerAsistencias();		
	
	//ASISTENCIAS DEL MES ACTUAL
	$scope.ProbandoAsistenciaMesActual = function(){
		$scope.datos = {
			codigoEmpleado: 1234
		}
		ResourceAsistenciaMesActual.get({}, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR asistenciaMesActual");
			}
		});
	}
	$scope.ProbandoAsistenciaMesActual();		
	
	//APROBAR PERMISO
	$scope.ProbandoAprobarPermiso = function(){
		$scope.datos = {
			idPermiso: 1
		}
		ResourceAprobarPermiso.save($scope.datos, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR aprobarPermiso");
			}
		});
	}
	$scope.ProbandoAprobarPermiso();	

	//DENEGAR PERMISO
	$scope.ProbandoDenegarPermiso = function(){
		$scope.datos = {
			idPermiso: 2
		}
		ResourceDenegarPermiso.save($scope.datos, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR denegarPermiso");
			}
		});
	}
	$scope.ProbandoDenegarPermiso();	



	$scope.verifyUser = function(nombreUsuario, contrasenia){
		console.log("Iniciar Sesion: " + "usuario: "+ nombreUsuario +"  pass:"+ contrasenia);

		if(nombreUsuario!=undefined && contrasenia!=undefined){
			var usuario = {
				nombreUsuario: nombreUsuario,
				contrasenia: contrasenia
			};		

			ResourceInicioSesionValidar.save(usuario, function(respuesta){

				if(respuesta[0] != undefined){
						console.log("respuesta desde laravel:" + respuesta);					
						//Guardamos los valores en las cookies CookieTipoCuentaLogueada						
						$cookies.put('CookieCuenta', respuesta[0].codigoUsuario); 
						$cookies.put('CookieTipoCuenta', respuesta[0].cargo);
						console.log('codigoUsuario: '+ respuesta[0].codigoUsuario +'  tipoUsuario: ' + respuesta[0].cargo); 

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
