var userLogged = {
    name: "AlejandroBrizo",
    typeUser: "Employee",
    state: "Logout"
}

$(document).ready(function() { 
    verifyAccount();
});

$(document).on('click', '#MenuPermisos li', function() {
    
    if($(this).attr('id') == "solicitudPorDia"){
        loadPageSectionOnMain("#HomeContent", "SolicitudPorDia"); 
    }
    if($(this).attr('id') == "solicitudPorDuelo"){
        loadPageSectionOnMain("#HomeContent", "SolicitudPorDuelo");          
    }
    if($(this).attr('id') == "solicitudPorIncapacidad"){
        loadPageSectionOnMain("#HomeContent", "SolicitudExcusaMedica");          
    }
    if($(this).attr('id') == "solicitudPorMaternidad"){
        loadPageSectionOnMain("#HomeContent", "SolicitudPorMaternidad");          
    }
    if($(this).attr('id') == "solicitudPorMatrimonio"){
        loadPageSectionOnMain("#HomeContent", "SolicitudPorMatrimonio");          
    }
    if($(this).attr('id') == "solicitudPorSalida"){
        loadPageSectionOnMain("#HomeContent", "SolicitudPorSalida");          
    }
    if($(this).attr('id') == "solicitudesExistentes"){
        loadPageSectionOnMain("#HomeContent", "SolicitudesExistentes");          
    }

});


function verifyAccount(){
    if(userLogged.state == "Logout"){
        goToPage("login");
    }else if(userLogged.state == "Logged"){
        goToPage("Home");
    }
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
                
                if(page== "register"){
                    $("#body").removeClass("login-page");   
                    $("#body").addClass("register-page");   
                }
                if(page=="Home"){
                    $("#body").removeClass("login-page");   
                    $("#body").addClass("skin-black");
                    $("#body").addClass("sidebar-mini");                       
                    $("#MasterContent").addClass("wrapper");                                           
                }
                if(page =="login"){
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

//Brizo: Cargar cualquier pagina, en una Section especifica (mediante id)
function loadPageSectionOnMain(inSection, page){
    $.ajax(
        {
            url: "ajax/openFile.php",
            data: "pageName=../views/"+page+".html",
            method:"POST",
            dataType: "json",
            success:function(response){
                $(inSection).html(response[0].content);
            },
            error:function(error){
                alert("No existe la ruta o el archivo. PENDIENTE.");
            }
        }
    );
}

function goToLogin(){
    goToPage("login");
}

 //SOLUCION
 $(document).on('click','#btn-SignIn',function(){
    //alert($(this).attr("id"));
    userLogged.state = "Logged";
    goToPage("Home");
});

$(document).on('click','#goToRegister',function() {
    goToPage("register");
});

$(document).on('click','#btn-Register',function() {
    alert("Se ha registrado con exito.");    
    goToPage("login");
});

$(document).on('click','#goBack-Register',function() {
    goToPage("login");
});
