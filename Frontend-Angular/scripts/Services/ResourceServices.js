'use strict';

angular.module('ProyectoISApp')

	//Funcionando
	.factory('ResourceInicioSesionValidar', function($resource){
		return $resource("http://localhost:8000/iniciarSesion/");
	})
	
	//Incompleto el SQL
	.factory('ResourceRegistrarEmpleado', function($resource){
		return $resource("http://localhost:8000/guardarDatosEmpleado");
	})

	//Error: 500 (Internal Server Error)
	.factory('ResourceBuscarContrato', function($resource){
		return $resource("http://localhost:8000/encontrarContrato");
	})

	//Error: 500 (Internal Server Error)
	.factory('ResourcePlanillaMes', function($resource){
		return $resource("http://localhost:8000/verPlanilla", { },
		{
			query: {
				url:"http://localhost:8000/verPlanilla",
				method: "GET",
				isArray: true,
				params: {}
			}
		});	
	})	

	//Funcionando
	.factory('ResourceHistorialDeducciones', function($resource){
		return $resource("http://localhost:8000/verDeduccion", { },
		{
			query: {
				url:"http://localhost:8000/verDeduccion",
				method: "GET",
				isArray: true,
				params: {}
			}
		});
	})		

	//Funcionando
	.factory('ResourceHistorialPagos', function($resource){
		return $resource("http://localhost:8000/historialPagos", { },
		{
			query: {
				url:"http://localhost:8000/historialPagos",
				method: "GET",
				isArray: true,
				params: {}
			}
		});		
	})		
	
	//Funcionando
	.factory('ResourceObtenerSuperiores', function($resource){
		return $resource("http://localhost:8000/obtenerSuperiores");
	})	

	//Funcionando, dejo de funcionar
	.factory('ResourceGuardarPermiso', function($resource){
		return $resource("http://localhost:8000/guardarPermiso");
	})

	//Funcionando
	.factory('ResourcePermisosSinLeer', function($resource){
		return $resource("http://localhost:8000/permisosSinLeer");
	})	

	//Funcionando
	.factory('ResourceObtenerAsistencias', function($resource){
		return $resource("http://localhost:8000/obtenerAsistencias", { },
		{
			query: {
				url:"http://localhost:8000/obtenerAsistencias",
				method: "GET",
				isArray: true,
				params: {}
			}
		});	
	})	

	//Funcionando
	.factory('ResourceAsistenciaMesActual', function($resource){
		return $resource("http://localhost:8000/asistenciaMesActual", { },
		{
			query: {
				url:"http://localhost:8000/asistenciaMesActual",
				method: "GET",
				isArray: true,
				params: {}
			}
		});	
	})	

	//Funcionando
	.factory('ResourceAprobarPermiso', function($resource){
		return $resource("http://localhost:8000/aprobarPermiso");
	})		

	//Funcionando
	.factory('ResourceDenegarPermiso', function($resource){
		return $resource("http://localhost:8000/denegarPermiso");
	})

	.factory('ResourcePermisosHistorial', function($resource){
		return $resource("http://localhost:8000/permisosHistorial", { },
		{
			save: {
				url:"http://localhost:8000/permisosHistorial",
				method: "POST",
				isArray: true,
				params: {}
			}
		});	
	})

	.factory('ResourceCuentaLogueada', function($resource){
		return $resource("http://localhost:8000/denegarPermiso");
	})
;//Final del angular.module


















