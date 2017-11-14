'use strict';

angular.module('ProyectoISApp')
	
//FACTORY DE COOKIES, estan dentro de un factory porque nada mas se necesita que se inicialicen una unica vez.
	.factory('InicializarCookies', ['$cookies', function($cookies){
		
			//Este servira para saber que cuenta se logueo, por medio del codigoLugar.
		$cookies.put('CookieCuenta', ''); 
			//Este servira para validad dependiendo que tipo de cuenta se logueo, por medio de tipoCuenta 1"Visitante" o 2"Lugar"
		$cookies.put('CookieTipoCuenta', '');

		return null;
	}])
;