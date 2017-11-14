//Aqui se inicializan los modulos con los [] diciendo que modulos usara

//MODULO DE PRINCIPAL
angular.module('ProyectoISApp', ['ngResource','ui.router', 'ngCookies'])
	
	.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
		$stateProvider
	
/*Relacionados a INICIO SESION*/
			.state('InicioSesion', {
				url:'/InicioSesion',
				templateUrl: 'views/InicioSesion/Login.html',
				controller: 'InicioSesionController'
			})
				.state('InicioSesion.Registrarse', {
					url: '/Registrarse',
					templateUrl: 'views/InicioSesion/Register.html',
					controller: 'RegistrarseController'
				})

//Relacionados a PAGINA PRINCIPAL
			.state('Principal', {
				url:'/Principal',
				templateUrl: 'views/Principal/Home.html',
				controller: 'PrincipalControllerr'
			})
		//PERMISOS
				.state('Principal.PermisoPorDia', {
					url: '/Solicitudes/PermisoPorDia',
					templateUrl: 'views/Principal/Solicitudes/SolicitudPorDia.html',
					controller: 'PermisosController'
				})
				.state('Principal.PermisoPorDuelo', {
					url: '/Solicitudes/PermisoPorDuelo',
					templateUrl: 'views/Principal/Solicitudes/SolicitudPorDuelo.html',
					controller: 'PermisosController'					
				})
				.state('Principal.PermisoPorMaternidad', {
					url: '/Solicitudes/PermisoPorMaternidad',
					templateUrl: 'views/Principal/Solicitudes/SolicitudPorMaternidad.html',
					controller: 'PermisosController'					
				})
				.state('Principal.PermisoPorMatrimonio', {
					url: '/Solicitudes/PermisoPorDia',
					templateUrl: 'views/Principal/Solicitudes/SolicitudPorMatrimonio.html',
					controller: 'PermisosController'					
				})
				.state('Principal.PermisoPorSalida', {
					url: '/Solicitudes/PermisoPorSalida',
					templateUrl: 'views/Principal/Solicitudes/SolicitudPorSalida.html',
					controller: 'PermisosController'					
				})
				.state('Principal.PermisoPorIncapacidadMedica', {
					url: '/Solicitudes/PermisoPorIncapacidadMedica',
					templateUrl: 'views/Principal/Solicitudes/SolicitudExcusaMedica.html',
					controller: 'PermisosController'					
				})
				.state('Principal.PermisosExistentes', {
					url: '/Solicitudes/PermisosExistentes',
					templateUrl: 'views/Principal/Solicitudes/SolicitudesExistentes.html',
					controller: 'PermisosController'					
				})
				
		//PLANILLA
				.state('Principal.BuscarContrato', {
					url: '/Planilla/BuscarContrato',
					templateUrl: 'views/Principal/Planilla/BuscarContrato.html'
				})
				.state('Principal.HistorialDeducciones', {
					url: '/Planilla/HistorialDeducciones',
					templateUrl: 'views/Principal/Planilla/HistorialDeducciones.html',
					controller: 'HistorialDeduccionesController'
				})
				.state('Principal.HistorialPagos', {
					url: '/Planilla/HistorialPagos',
					templateUrl: 'views/Principal/Planilla/HistorialPagos.html'
				})				
				.state('Principal.PlanillaMes', {
					url: '/Planilla/PlanillaMes',
					templateUrl: 'views/Principal/Planilla/PlanillaMes.html'
				})
				.state('Principal.ImprimirComprobantePago', {
					url: '/Planilla/ImprimirComprobantePago',
					templateUrl: 'views/Principal/Planilla/ImprimirComprobantePago.html'
				})
				.state('Principal.RegistrarEmpleado', {
					url: '/Planilla/RegistrarEmpleado',
					templateUrl: 'views/Principal/Planilla/RegistrarEmpleado.html'
				})
		//Asistencias
				.state('Principal.AsistenciaMesActual', {
					url: '/Asistencias/AsistenciaDelMes',
					templateUrl: 'views/Principal/Asistencias/AsistenciaMesActual.html'
				})
				.state('Principal.BusquedaAsistencia', {
					url: '/Asistencias/BusquedaAsistencia',
					templateUrl: 'views/Principal/Asistencias/BusquedaAsistencia.html'
				})
				.state('Principal.HistorialAsistencias', {
					url: '/Asistencias/HistorialAsistencias',
					templateUrl: 'views/Principal/Asistencias/HistorialAsistencias.html'
				})


		//CALENDARIOS
				.state('Principal.CalendarioPermisos', {
					url: 'Calendarios/CalendarioPermisos',
					templateUrl: 'views/Principal/Calendarios/CalendarioPermisos.html'
				})

	}]);