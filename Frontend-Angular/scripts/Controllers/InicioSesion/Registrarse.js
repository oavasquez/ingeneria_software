'use strict'

angular.module('ProyectoISApp')

	.controller('RegistrarseController', ['$scope','$location','$timeout','$http','ResourceRegistroVerificar',
	 																			function($scope,$location, $timeout, $http, ResourceRegistroVerificar){
		
		//Variables
		$scope.nombreUsuarioBoleano = false;
		$scope.correoBoleano = false;
		var meses = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];

		$scope.registrarUsuario = function(visitante){
		//	$scope.verificarNombreUsuario();
		//	$scope.verificarCorreo();

			//Si el formulario es valido o si no hay ningun error en los componentes

			if($scope.form.$valid && $scope.nombreUsuarioBoleano!=true && $scope.correoBoleano!=true && visitante.fechaNacimiento!=undefined){
			
				//Tokenizamos la fecha para obtener los valores necesarios
				var fechaNacimiento = analizarFecha(visitante.fechaNacimiento);
				var fechaActual = analizarFecha(FechaActual);
				var visitante = {nombre: visitante.nombre,
								 apellido: visitante.apellido,
								 nombreUsuario: visitante.nombreUsuario,
								 fechaNacimiento: fechaNacimiento,
								 fechaActual: fechaActual,
								 correo: visitante.correo,
								 contrasenia: visitante.contrasenia1,
								 genero: visitante.genero};

				//Hacer post
				ResourceRegistroVisitanteRegistrar.save(visitante, function(respuesta){
					if(respuesta.estado == 'success'){
						$('#modal-loading').modal('show');

						$timeout(function (){
							$location.path('/Principal');
							$('#modal-loading').modal('hide');
						}
						,2000);
					}
					else
						window.alert('La creacion del lugar ha fallado');
				});
						
			};
}



		$scope.verificarNombreUsuario = function(nombreUsuario){
			if(nombreUsuario!=undefined){
				ResourceRegistroVisitanteVerificar.save({nombreUsuario: nombreUsuario, correo: ' '}, function(respuesta){
				if(respuesta.verificado=='TRUE')
					$scope.nombreUsuarioBoleano = true;
				else
					$scope.nombreUsuarioBoleano = false;
			});
			}

		}

		$scope.verificarCorreo = function(correo){
			if(correo!=undefined){
				ResourceRegistroVisitanteVerificar.save({nombreUsuario: '', correo: correo}, function(respuesta){
				if(respuesta.verificado=='TRUE')
					$scope.correoBoleano = true;
				else
					$scope.correoBoleano = false;
			});
			}

		}

		function analizarFecha(date){
			//Tokenizamos la fecha para obtener los valores necesarios
				var fecha = ""+date+"";
				var resultado = fecha.split(" ");
				var fechaNacimiento = resultado[2]+"-"+analizarMes(resultado[1])+"-"+resultado[3];
				return fechaNacimiento;
		}

		function analizarMes(mes){
			for(var i=0; i<meses.length; i++){
				if(meses[i]==mes){
					if(i<10){
						return "0"+(i+1);
					}
					else
						return i+1;
				}
			}
		}

		$scope.verificarContrasenia = function(contra1, contra2){
				if (contra1!=undefined && contra2!=undefined ){
					if (contra1 == contra2) 
						return true;
					else
					return false;
				}	
		};

		$scope.verificarTamanioContrasenia = function(contra1, contra2){
				if (contra1!=undefined && contra2!=undefined ){
					if (contra1 != contra2) 
						return true;
					else
						return false;
				}
	
		};

	$scope.today = function() {
    $scope.dt = new Date();
	  };
	  $scope.today();

	  $scope.clear = function() {
	    $scope.dt = null;
	  };

	  $scope.inlineOptions = {
	    customClass: getDayClass,
	    minDate: new Date(),
	    showWeeks: true
	  };

	  $scope.dateOptions = {
//	    dateDisabled: disabled,
	    formatYear: 'yy',
	    maxDate: new Date(2020, 5, 22),
	    minDate: new Date(),
	    startingDay: 1
	  };
/*
	  // Disable weekend selection
	  function disabled(data) {
	    var date = data.date,
	      mode = data.mode;
	    return mode === 'day' && (date.getDay() === 0 || date.getDay() === 6);
	  }
*/
	  $scope.toggleMin = function() {
	    $scope.inlineOptions.minDate = $scope.inlineOptions.minDate ? null : new Date();
	    $scope.dateOptions.minDate = $scope.inlineOptions.minDate;
	  };

	  $scope.toggleMin();

	  $scope.open1 = function() {
	    $scope.popup1.opened = true;
	  };

	  $scope.setDate = function(year, month, day) {
	    $scope.dt = new Date(year, month, day);
	  };

	  $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
	  $scope.format = $scope.formats[0];
	  $scope.altInputFormats = ['M!/d!/yyyy'];

	  $scope.popup1 = {
	    opened: false
	  };

	  $scope.popup2 = {
	    opened: false
	  };

	  var tomorrow = new Date();
	  tomorrow.setDate(tomorrow.getDate() + 1);
	  var afterTomorrow = new Date();
	  afterTomorrow.setDate(tomorrow.getDate() + 1);
	  $scope.events = [
	    {
	      date: tomorrow,
	      status: 'full'
	    },
	    {
	      date: afterTomorrow,
	      status: 'partially'
	    }
	  ];

	  function getDayClass(data) {
	    var date = data.date,
	      mode = data.mode;
	    if (mode === 'day') {
	      var dayToCheck = new Date(date).setHours(0,0,0,0);

	      for (var i = 0; i < $scope.events.length; i++) {
	        var currentDay = new Date($scope.events[i].date).setHours(0,0,0,0);

	        if (dayToCheck === currentDay) {
	          return $scope.events[i].status;
	        }
	      }
	    }

	    return '';
	  }

	}]);