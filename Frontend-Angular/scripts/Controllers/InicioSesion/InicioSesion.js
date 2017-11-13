'use strict'

angular.module('ProyectoISApp')

	.controller('InicioSesionController', ['$scope','$location','$http','$timeout','$cookies',
											'ResourceInicioSesionValidar',
											'InicializarCookies',
											function($scope, $location, $http ,$timeout,$cookies,
											 ResourceInicioSesionValidar,
											 InicializarCookies){
	 
	//Atributos necesarios
	$scope.mostrarMensajeError = false; //Con esta variable se controla la visibilidad del mensaje de error
	$scope.user = {};

	$scope.verifyUser = function(nombreUsuario, contrasenia){
		console.log("Iniciar Sesion: " + "usuario: "+ nombreUsuario +"  pass:"+ contrasenia);

		if(nombreUsuario!=undefined && contrasenia!=undefined){
			var usuario = {
				nombreUsuario: nombreUsuario,
				contrasenia: contrasenia
			};		

			ResourceInicioSesionValidar.save(usuario, function(respuesta){
				console.log("respuesta desde laravel:" + respuesta);
/*				if(respuesta.mensaje == 'success'){
						//Guardamos los valores en las cookies CookieTipoCuentaLogueada						
						$cookies.put('CookieCuentaLogueada', respuesta.codigoUsuario); 
						$cookies.put('CookieTipoCuentaLogueada', respuesta.tipoUsuario);
						console.log('codigoUsuario: '+ respuesta.codigoUsuario +'  tipoUsuario: ' + respuesta.tipoUsuario); 

						$('#modal-loading').modal('show');

						$timeout(function (){
							$location.path('/Principal');
							$('#modal-loading').modal('hide');
						}
						,2000);
					}
					else
						$scope.mostrarMensajeError = true; 
						*/
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
