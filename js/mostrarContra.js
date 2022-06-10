function mostrar(){
    contador=0;

    //Mostrar contraseña
    var tipo = document.getElementById("contrasena");
    if(tipo.type=="password"){
        tipo.setAttribute("type","text");
    }else{
        tipo.setAttribute("type","password");
    }
    if(contador%2==0){
        $("button").click(function(){
            $(".far fa-eye").removeClass("far fa-eye");
            $(this).children("i").addClass("fa-regular fa-eye-slash");
        });
        contador++;
    }else{
        $(".fa-regular fa-eye-slash").removeClass("far fa-eye");
            $(this).children("i").addClass("far fa-eye");
        contador++;
    }
    
}