
document.getElementById("formulario").addEventListener('submit', validar);
function validar(event) {
// Me traigo los id
    var errores ="";
    var contrase = document.getElementById('contra').value;
    var usuario = document.getElementById('nombre').value;

// Compruebo si ha iniciado sesion
    var user2 = JSON.parse(localStorage.getItem('key'));

    if(user2.nombre!=usuario || user2.contra!=contrase){
        document.getElementsByTagName("input")[0].setAttribute("class", "error");// cambia el borde del impuct a rojo como señal de error (Todos son iguales)
        document.getElementsByTagName("input")[1].setAttribute("class", "error");// cambia el borde del impuct a rojo como señal de error (Todos son iguales)

        errores+="Posibles fallos: <br>-El usuario o la contraseña no son correctas.<br> -No se ha registrado.";

        // Introduce el mensaje en el div
        document.getElementById("errores").innerHTML=errores;
        event.preventDefault();
    }
}
