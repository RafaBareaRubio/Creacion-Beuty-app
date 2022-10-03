window.addEventListener('DOMContentLoaded', (event) => {
    document.getElementById("formulario").addEventListener('submit', cargarCita);
    function cargarCita(event) {
        ok = true;
        if(servicio  ===  ""){
            event.preventDefault();
            document.getElementsByTagName("input")[2].setAttribute("class", "error");//
            error = "Seleccione un servicio";
            return error;
        }else{
            
        }
        return ok;
    }
});