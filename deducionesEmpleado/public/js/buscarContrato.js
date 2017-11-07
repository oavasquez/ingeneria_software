$("#btnBuscar").click(function(){
	var codigo=$("#txtCodigoContrato").val();
	var parametro= "codigo="+codigo;
	console.log(parametro);
	
	$.ajax({
		url:"/getDatosContrato",
		data:parametro,
		method:"GET",
		dataType:"json",
		success:function(respuesta){
			console.log(respuesta);
			$("#lblCodigoContrato").html(respuesta[0].idContrato);
			$("#lblTipoContrato").html(respuesta[0].TipoContrato);
			$("#lblHoraEntrada").html(respuesta[0].horaEntrada);
			$("#lblHoraSalida").html(respuesta[0].horaSalida);
			$("#lblDiasTrabajo").html(respuesta[0].diasDeTrabajo);
			$("#lblFechaContratacion").html(respuesta[0].fechaContratacion);		

		},
		error:function(error){
			alert("Error!!!!")
			console.log(error);

		}


	});



});



