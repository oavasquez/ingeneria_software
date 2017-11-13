'use strict';

angular.module('ProyectoISApp')
	
//FACTORY DE COOKIES, estan dentro de un factory porque nada mas se necesita que se inicialicen una unica vez.
	.factory('InicializarCookies', ['$cookies', function($cookies){
		
			//Este servira para saber que cuenta se logueo, por medio del codigoLugar.
		$cookies.put('CookieCuentaLogueada', ''); 
			//Este servira para validad dependiendo que tipo de cuenta se logueo, por medio de tipoCuenta 1"Visitante" o 2"Lugar"
		$cookies.put('CookieTipoCuentaLogueada', '');
			//Servira para cualquier gestion dentro del perfil de esa Cuenta (Mensaje, seguimiento, etc..)
		$cookies.put('CookieCodigoCuentaPerfilVisitado','');


		return null;
	}])
;