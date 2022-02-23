function mostrar(){

    //Mostrar contraseña
    var tipo = document.getElementById("contra");
    if(tipo.type=="password"){
        tipo.setAttribute("type","text");
    }else{
        tipo.setAttribute("type","password");
    }
    //Cambiar el icono
    // No consigo hacerlo
    // $("button").click(function(){
    //     // $(".far fa-eye").removeClass("far fa-eye");
    //     $(this).children("i").addClass("fa-regular fa-eye-slash");
    // });
}