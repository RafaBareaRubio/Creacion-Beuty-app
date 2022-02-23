// Variables
var ok = true;
var errores = "";

// Para esperarme a que cargue el html entero y luego ejecuto el script
window.addEventListener('DOMContentLoaded', (event) => {
    
    // Validar Campos
    document.getElementById("formulario").addEventListener('submit', validar);
    function validar(event) {


    //Contadores para comprobar si la password es fuerte
    ok = true;
    errores="";
    var contadorLetraM=0;
    var contadorNum=0;
    var contadorEspe=0;
    var contraseña = document.getElementById('contra').value;
    document.getElementsByTagName("input")[3].setAttribute("class", "");

    if(contraseña.length>=10){//Longitud

        for(i=0;i<contraseña.length;i++){
            
            letra=contraseña.charCodeAt(i);

            if(letra>=65 && letra<=90){//Mayuscula
                contadorLetraM++;
            }
            
            if(letra>=48 && letra<=57){//Numero
                contadorNum++;
            }

            if(letra>=33 && letra<=47 || letra>=123 && letra<=255 || letra>=91 && letra<=96){//Especial
                contadorEspe++;
            }  
        }
    }else{
        document.getElementsByTagName("input")[3].setAttribute("class", "error");// cambia el borde del impuct a rojo como señal de error (Todos son iguales)
        errores="Contraseña demasiado corta<br>";
    }

    if(contadorEspe == 0 || contadorLetraM == 0 || contadorNum == 0){
        ok=false;
        document.getElementsByTagName("input")[3].setAttribute("class", "error");// cambia el borde del impuct a rojo como señal de error (Todos son iguales)
        errores+="Contraseña no valida puede faltar numeros, mayusculas o simbolos.<br>";

        // Introduce el mensaje en el div
        document.getElementById("errores").innerHTML=errores;
    }
        
        // Expresiones regulares
        var nombreApeValido = /(^[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{3,16})+$/;
        var emailValido = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

        //Variables traidas
        var nombre = document.getElementById("nombre");
        var apellidos = document.getElementById("apellidos");
        var email = document.getElementById("correo");
        

        // Validar campos

        if (!nombreApeValido.test(nombre.value)) {// Nombre vacio
            ok = false;
            document.getElementsByTagName("input")[0].setAttribute("class", "error");// cambia el borde del impuct a rojo como señal de error (Todos son iguales)
        }else{// cambiamos la clase para que desaparezca el borde en rojo
            document.getElementsByTagName("input")[0].setAttribute("class", "");
        }

        if (!nombreApeValido.test(apellidos.value)) {// Nombre vacio
            ok = false;
            document.getElementsByTagName("input")[1].setAttribute("class", "error");//
        }else{
            document.getElementsByTagName("input")[1].setAttribute("class", "");
        }


        if (!emailValido.test(email.value)) {// Email no valido
            ok = false;
            document.getElementsByTagName("input")[2].setAttribute("class", "error");//
        }else{
            document.getElementsByTagName("input")[2].setAttribute("class", "");
        }

        // Cancelamos el envio
            if (ok == false) {  // Muestra el mensaje de error en su div por id

                event.preventDefault();

            }else{
                var user = {"nombre":nombre.value,"contra":contra.value};
                localStorage.setItem('key', JSON.stringify(user));
            }
        return ok;
        // Si no entra, como no pide que mostremos nada, se enviaran los datos y se registraran automaticamente. Ya estará todo correcto
    }
});