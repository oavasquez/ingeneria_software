$("#btnBuscar").click(function(){
	var codigo=$("#txtCodigoEmpleado").val();
	var parametro= "codigo="+codigo;
	
	$.ajax({
		url:"/getDatosEmpleado",
		data:parametro,
		method:"GET",
		dataType:"json",
		success:function(respuesta){
			console.log(respuesta);

			

		},
		error:function(error){
			alert("Error!!!!")
			console.log(error);

		}


	});



});



