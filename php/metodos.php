<?php 
$servidor = "localhost";
$baseDatos = "creacion";
$usuario = "root";
$pass = "";

error_log(0);

// SERVICIOS

function obtenerServicio($id)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);

        $sql = $con->prepare("SELECT * from servicio where id=:id");
        $sql->bindParam(":id", $id); //Para evitar inyecciones SQL
        $sql->execute();
        $row = $sql->fetch(PDO::FETCH_ASSOC); //Recibimos la linea correspondiente en ROW
        $con = null; //Cerramos la conexión
        return $row;
    } catch (PDOException $e) {
        echo $e;
    }
}

function insertarServicio($nombre, $precio, $oferta, $tipo, $descripcion, $foto)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("INSERT into servicio values(null,:nombre,:precio,:oferta,:tipo,:descripcion,:foto)");
        $sql->bindParam(":nombre", $nombre);
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":tipo", $tipo);
        $sql->bindParam(":descripcion", $descripcion);
        $sql->bindParam(":foto", $foto);
        $sql->execute();
        $id = $con->lastInsertId();
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $id;
}

function obtenerTodosServicios(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT id,nombre,precio,oferta,tipo,descripcion,foto from servicio order by tipo;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

function obtenerTodosTiposServicios(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT DISTINCT tipo from servicio;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

function obtenerTodosNombreServicios(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT DISTINCT nombre from servicio;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}



function eliminarServicio($id)
{
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("DELETE from servicio where id=:id");
        $sql->bindParam(":id", $id);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        redirect();
    }
    $con = null;
    return $retorno;
}
function editarServicio($id, $nombre, $precio, $tipo, $oferta, $descripcion, $foto)
{
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("UPDATE servicio set nombre=:nombre , precio=:precio, tipo=:tipo, oferta=:oferta, descripcion=:descripcion, foto=:foto where id=:id;");
        $sql->bindParam(":id", $id);
        $sql->bindParam(":nombre", $nombre);
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":tipo", $tipo);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":descripcion", $descripcion);
        $sql->bindParam(":foto", $foto);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        redirectGestionServicios();
    }
    $con = null;
    return $retorno;
}





// PRODUCTOS

function obtenerProducto($id)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);

        $sql = $con->prepare("SELECT * from producto where id=:id");
        $sql->bindParam(":id", $id); //Para evitar inyecciones SQL
        $sql->execute();
        $row = $sql->fetch(PDO::FETCH_ASSOC); //Recibimos la linea correspondiente en ROW
        $con = null; //Cerramos la conexión
        return $row;
    } catch (PDOException $e) {
        echo $e;
    }
}

function insertarProducto($nombre, $unidad, $precio, $oferta, $descripcion, $foto)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("INSERT into producto values(null,:nombre,:unidad,:precio,:oferta,:descripcion, :foto)");
        $sql->bindParam(":nombre", $nombre);
        $sql->bindParam(":unidad", $unidad);
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":descripcion", $descripcion);
        $sql->bindParam(":foto", $foto);
        $sql->execute();
        $id = $con->lastInsertId();
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $id;
}

function obtenerTodosProductos(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT id,nombre,unidad,precio,oferta,descripcion,foto from producto;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

function eliminarProducto($id)
{
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("DELETE from producto where id=:id");
        $sql->bindParam(":id", $id);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        redirect();
    }
    $con = null;
    return $retorno;
}
function editarProducto($id, $titulo, $publicacion, $tipo, $contenido, $fecha, $foto)
{
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("UPDATE producto set nombre=:nombre , unidad=:unidad, precio=:precio, oferta=:oferta, descripcion=:descripcion, foto=:foto where id=:id;");
        $sql->bindParam(":id", $id);
        $sql->bindParam(":nombre", $nombre);
        $sql->bindParam(":unidad", $unidad);
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":descripcion", $descripcion);
        $sql->bindParam(":foto", $foto);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        redirectGestionProductos();
    }
    $con = null;
    return $retorno;
}

//Usuario
function obtenerUsuario($id)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);

        $sql = $con->prepare("SELECT * from usuario where id=:id");
        $sql->bindParam(":id", $id); //Para evitar inyecciones SQL
        $sql->execute();
        $row = $sql->fetch(PDO::FETCH_ASSOC); //Recibimos la linea correspondiente en ROW
        $con = null; //Cerramos la conexión
        return $row;
    } catch (PDOException $e) {
        echo $e;
    }
}

function editarUsuario($id, $usuarioTxt, $contrasena, $nombreYape, $dni, $gmail, $confirmado, $telefono, $tipo, $direccion)
{
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("UPDATE usuario set usuario=:usuarioTxt , contrasena=:contrasena, nombreYape=:nombreYape, dni=:dni, gmail=:gmail, telefono=:telefono, confirmado=:confirmado, tipo=:tipo,  direccion=:direccion where id=:id;");
        $sql->bindParam(":id", $id);
        $sql->bindParam(":usuario", $usuarioTxt);
        $sql->bindParam(":contrasena", $contrasena);
        $sql->bindParam(":nombreYape", $nombreYape);
        $sql->bindParam(":dni", $dni);
        $sql->bindParam(":gmail", $gmail);
        $sql->bindParam(":telefono", $telefono);
        $sql->bindParam(":confirmado", $confirmado);
        $sql->bindParam(":tipo", $tipo);
        $sql->bindParam(":direccion", $direccion);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        redirectGestionUsuarios();
    }
    $con = null;
    return $retorno;
}
function obtenerTodosLosUsuarios(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT * from usuario;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

function obtenerTiposUsuario(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT DISTINCT tipo from usuario;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

function obtenerTrabajadores(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT DISTINCT nombreYape from usuario where tipo = 'trabajador';");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

function insertarUsuario( $usuarioTxt, $contrasena, $nombreYape, $dni, $gmail, $telefono, $confirmado, $tipo, $direccion ){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("INSERT into usuario values(null,:usuario,:contrasena,:nombreYape,:dni,:gmail,:telefono,:confirmado,:tipo,:direccion)");
        $sql->bindParam(":usuario", $usuarioTxt);
        $sql->bindParam(":contrasena", $contrasena);
        $sql->bindParam(":nombreYape", $nombreYape);
        $sql->bindParam(":dni", $dni);
        $sql->bindParam(":gmail", $gmail);
        $sql->bindParam(":telefono", $telefono);
        $sql->bindParam(":confirmado", $confirmado);
        $sql->bindParam(":tipo", $tipo);
        $sql->bindParam(":direccion", $direccion);
        $sql->execute();
        $id = $con->lastInsertId();
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $id;
}

function eliminarUsuario($id)
{
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("DELETE from usuario where id=:id");
        $sql->bindParam(":id", $id);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        redirect();
    }
    $con = null;
    return $retorno;
}

function obtenerConfirmadoUsuario(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT DISTINCT confirmado from usuario;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

//Ofertas

function obtenerTodosServiciosOfertas(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT id,nombre,precio,oferta,descripcion from servicio where oferta is not null;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

function obtenerTodosProductosOfertas(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT id,nombre,precio,oferta,descripcion from producto where oferta is not null;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

//Formulario
//Aqui hay redundancia porque el usuario se puede sacar a partir del id, pero es por comodidad para mostrar los datos
function insertarMensaje($txtUsuario, $texto, $emoji)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("INSERT into mensaje values(null,:txtUsuario,:texto,:emoji)");
        $sql->bindParam(":txtUsuario", $txtUsuario);
        $sql->bindParam(":texto", $texto);
        $sql->bindParam(":emoji", $emoji);
        $sql->execute();
        $id = $con->lastInsertId();
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $id;
}

function obtenerTodosLosMensajes(){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("SELECT * from mensaje;");
        $sql->execute();
        $miArray = [];
        while ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
            $miArray[] = $row;
        }    
    } catch (PDOException $e) {
        echo $e;
    }
    $con = null;
    return $miArray;
}

function obtenerMensaje($id){
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);

        $sql = $con->prepare("SELECT * from mensaje where id=:id");
        $sql->bindParam(":id", $id); //Para evitar inyecciones SQL
        $sql->execute();
        $row = $sql->fetch(PDO::FETCH_ASSOC); //Recibimos la linea correspondiente en ROW
        $con = null; //Cerramos la conexión
        return $row;
    } catch (PDOException $e) {
        echo $e;
    }
}

function eliminarMensaje($id){
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("DELETE from mensaje where id=:id");
        $sql->bindParam(":id", $id);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        redirect();
    }
    $con = null;
    return $retorno;
}



//Redireccion de error
function redirectGestionServicios()
{
    if (headers_sent())
    {    
        echo '<script type="text/javascript"> window.location.href="gestionServicios.php"</script>';
        exit;
        }
    else
        {  
        echo '<script type="text/javascript"> window.location.href="../../php/error.php"</script>';
        echo '<noscript>';
        echo '<meta http-equiv="refresh" content="0;url=../../php/error.php" />';
        echo '</noscript>'; exit;
    }
}

function redirectGestionProductos()
{
    if (headers_sent())
    {    
        echo '<script type="text/javascript"> window.location.href="gestionProductos.php"</script>';
        exit;
        }
    else
        {  
        echo '<script type="text/javascript"> window.location.href="../../php/error.php"</script>';
        echo '<noscript>';
        echo '<meta http-equiv="refresh" content="0;url=../../php/error.php" />';
        echo '</noscript>'; exit;
    }
}

function redirectGestionUsuarios()
{
    if (headers_sent())
    {    
        echo '<script type="text/javascript"> window.location.href="gestionUsuarios.php"</script>';
        exit;
        }
    else
        {  
        echo '<script type="text/javascript"> window.location.href="../../php/error.php"</script>';
        echo '<noscript>';
        echo '<meta http-equiv="refresh" content="0;url=../../php/error.php" />';
        echo '</noscript>'; exit;
    }
}

function redirect()
{
    if (headers_sent())
    {    
        echo '<script type="text/javascript"> window.location.href="../../php/error.php"</script>';
        exit;
        }
    else
        {  
        echo '<script type="text/javascript"> window.location.href="../../php/error.php"</script>';
        echo '<noscript>';
        echo '<meta http-equiv="refresh" content="0;url=../../php/error.php" />';
        echo '</noscript>'; exit;
    }
}

?>
