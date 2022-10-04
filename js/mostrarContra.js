function mostrar(){
    contador=0;

    //Mostrar contraseña
    var tipo = document.getElementById("contra");
    if(tipo.type=="password"){
        tipo.setAttribute("type","text");
        $("button").click(function(){
            $(this).children("i").removeClass("fas fa-eye-slash");
            $(this).children("i").removeClass("far fa-eye");
            $(this).children("i").addClass("far fa-eye");
        });
    }else{
        tipo.setAttribute("type","password");
        $("button").click(function(){
            $(this).children("i").removeClass("far fa-eye");
            $(this).children("i").removeClass("fas fa-eye-slash");
            $(this).children("i").addClass("fas fa-eye-slash");    
        });
    }

}