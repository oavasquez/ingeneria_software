'use strict'

angular.module('ProyectoISApp')

	.controller('InicioSesionController', ['$scope','$location','$http','$timeout','$cookies',
											'ResourceInicioSesionValidar', 'ResourceBuscarContrato', 'ResourceRegistrarEmpleado', 'ResourcePlanillaMes',
											'ResourceHistorialDeducciones', 'ResourceHistorialPagos', 'ResourceObtenerSuperiores',
											'ResourceGuardarPermiso',
											'InicializarCookies',
											function($scope, $location, $http ,$timeout,$cookies,
											 ResourceInicioSesionValidar, ResourceBuscarContrato, ResourceRegistrarEmpleado, ResourcePlanillaMes,
											 ResourceHistorialDeducciones, ResourceHistorialPagos, ResourceObtenerSuperiores,
											 ResourceGuardarPermiso,
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
			idCargo: 2
		}

		ResourceRegistrarEmpleado.save($scope.datos, function(respuesta){
			if(respuesta[0] != undefined){

			}else{

			}
		});
	}
	//BUSCAR CONTRATO
	$scope.ProbandoBuscarContrato = function(){
		$scope.datos = {
			codigoEmpleado: 1234,
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
			codigoEmpleado: 1234,
		}
		ResourcePlanillaMes.get({}, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR");
			}
		});
	}
	$scope.ProbandoVerPlanillaMes();

	//VER DEDUCCIONES
	$scope.ProbandoHistorialDeducciones = function(){
		$scope.datos = {
			codigoEmpleado: 1234,
		}
		ResourceHistorialDeducciones.get({}, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR");
			}
		});
	}
	$scope.ProbandoHistorialDeducciones();		

	//HISTORIAL PAGOS
	$scope.ProbandoHistorialPagos = function(){
		$scope.datos = {
			codigoEmpleado: 1234,
		}
		ResourceHistorialPagos.get({}, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR");
			}
		});
	}
	$scope.ProbandoHistorialPagos();		

	//OBTENER SUPERIORES
	$scope.ProbandoObtenerSuperiores = function(){
		$scope.datos = {
			codigoEmpleado: 1234,
		}
		ResourceObtenerSuperiores.save({}, function(respuesta){
			if(respuesta[0] != undefined){
				console.log(respuesta[0]);
			}else{
				alert("ERROR");
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
				alert("ERROR");
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
						console.log("respuesta desde laravel:" + respuesta);					
						//Guardamos los valores en las cookies CookieTipoCuentaLogueada						
						$cookies.put('CookieCuentaLogueada', respuesta.codigoUsuario); 
						$cookies.put('CookieTipoCuentaLogueada', respuesta.cargo);
						console.log('codigoUsuario: '+ respuesta[0].codigoUsuario +'  tipoUsuario: ' + respuesta[0].cargo); 

						alert("Bienvenido "+respuesta[0].nombreUsuario);

						$timeout(function (){ 
							$location.path('/Principal');
							$("#body").removeClass("sidebar-mini");
							$("#body").removeClass("skin-black");
							$("#body").addClass("login-page");                       
							$("#MasterContent").removeClass("wrapper");   
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

	 function goToPage(page){
		$.ajax(
			{
				url: "ajax/openFile.php",
				data: "pageName=../views/"+page+".html",
				method:"POST",
				dataType: "json",
				success:function(response){
					$("#body").addClass("hold-transition");                       
					
					if(page== "Register"){
						$("#body").removeClass("login-page");   
						$("#body").addClass("register-page");   
					}
					if(page=="Home"){
						$("#body").removeClass("login-page");   
						$("#body").addClass("skin-black");
						$("#body").addClass("sidebar-mini");                       
						$("#MasterContent").addClass("wrapper");                                           
					}
					if(page =="Login"){
						console.log("GoToLogin()");
						$("#body").removeClass("sidebar-mini");
						$("#body").removeClass("skin-black");
						$("#body").addClass("login-page");                       
						$("#MasterContent").removeClass("wrapper");   
					}
					$("#MasterContent").html(response[0].content);             
				},
				error:function(error){
					alert("No existe la ruta o el archivo. PENDIENTE.");
				}
			}
		);
	}

	}]);
