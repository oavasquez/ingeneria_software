var userLogged = {
    name: "AlejandroBrizo",
    typeUser: "Employee",
    state: "LogOff"
}

$(document).ready(function() { 

    verifyAccount();

    $("#MenuPermisos li").click(function() {

        if($(this).attr('id') == "solicitudPorDia"){
        loadPageSectionOnMain("#HomeContent", "SolicitudPorDia"); 
        console.log("Hola");         
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

 });

$("#goToRegister").click(function() {
    goToPage("Register");
});

$("#btn-SignIn").click(function() {
    userLogged.state = "Logged";
    goToPage("Home");
});

function verifyAccount(){
    if(userLogged.state == "LogOff"){
        goToPage("Login");
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
                if(page== "Register"){
                    $("#body").removeClass("login-page");   
                    $("#body").addClass("register-page");   
                }
                if(page=="Home"){
                    $("#body").removeClass("login-page");   
                    $("#body").addClass("skin-black");
                    $("#body").addClass("sidebar-mini");                       
                    $("#MasterContent").addClass("wrapper");                                           
                }
                if(page =="Login"){
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
