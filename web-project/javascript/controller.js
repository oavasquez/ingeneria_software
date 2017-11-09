$(document).ready(function() { 

    $("#MenuPermisos li").click(function() {

        if($(this).attr('id') == "solicitudPorDia"){
        loadPageSectionOnMain("SolicitudPorDia"); 
        console.log("Hola");         
        }
        if($(this).attr('id') == "solicitudPorDuelo"){
        loadPageSectionOnMain("SolicitudPorDuelo");          
        }
        if($(this).attr('id') == "solicitudPorIncapacidad"){
        loadPageSectionOnMain("SolicitudExcusaMedica");          
        }
        if($(this).attr('id') == "solicitudPorMaternidad"){
        loadPageSectionOnMain("SolicitudPorMaternidad");          
        }
        if($(this).attr('id') == "solicitudPorMatrimonio"){
            loadPageSectionOnMain("SolicitudPorMatrimonio");          
        }
        if($(this).attr('id') == "solicitudPorSalida"){
            loadPageSectionOnMain("SolicitudPorSalida");          
        }
        if($(this).attr('id') == "solicitudesExistentes"){
            loadPageSectionOnMain("SolicitudesExistentes");          
        }

    });

 });


//Brizo: Cargar cualquier pagina
function loadPageSectionOnMain(page){
    $.ajax(
        {
            url: "ajax/openFile.php",
            data: "pageName=../views/"+page+".html",
            method:"POST",
            dataType: "json",
            success:function(response){
                $("#main-content").html(response[0].content);
            },
            error:function(error){
                alert("No existe la ruta o el archivo. PENDIENTE.");
            }
        }
    );
}

