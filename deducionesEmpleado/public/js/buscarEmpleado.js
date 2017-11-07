$("#btnBuscar").click(function(){
	var codigo=$("#txtCodigoEmpleado").val();
	var parametro= "codigo="+codigo;
	console.log(parametro);
	
	$.ajax({
		url:"/getDatosEmpleado",
		data:parametro,
		method:"GET",
		dataType:"json",
		success:function(respuesta){
			console.log(respuesta);
			$("#lblCodigoEmpleado").html(respuesta[0].codigo);
			$("#lblNombre").html(respuesta[0].nombre);
			$("#lblCargo").html(respuesta[0].cargo);
			$("#lblSueldo").html(respuesta[0].sueldo);
			$("#lblHoraEntrada").html(respuesta[0].horaentrada);
			$("#lblHoraSalida").html(respuesta[0].horasalida);		

		},
		error:function(error){
			alert("Error!!!!")
			console.log(error);

		}


	});



});



