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

function insertarServicio($nombre, $precio, $oferta, $tipo, $descripcion)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("INSERT into servicio values(null,:nombre,:precio,:oferta,:tipo,:descripcion)");
        $sql->bindParam(":nombre", $nombre);
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":tipo", $tipo);
        $sql->bindParam(":descripcion", $descripcion);
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
        $sql = $con->prepare("SELECT id,nombre,precio,oferta,tipo,descripcion from servicio order by tipo;");
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
        header("location: ../php/error.php");
    }
    $con = null;
    return $retorno;
}
function editarServicio($id, $nombre, $precio, $tipo, $oferta, $descripcion)
{
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("UPDATE servicio set nombre=:nombre , precio=:precio, tipo=:tipo, oferta=:oferta, descripcion=:descripcion where id=:id;");
        $sql->bindParam(":id", $id);
        $sql->bindParam(":nombre", $nombre);
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":tipo", $tipo);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":descripcion", $descripcion);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        header("location: ../php/error.php");
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

function insertarProducto($nombre, $unidad, $precio, $oferta, $descripcion)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("INSERT into producto values(null,:nombre,:unidad,:precio,:oferta,:descripcion)");
        $sql->bindParam(":nombre", $nombre);
        $sql->bindParam(":unidad", $unidad);
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":descripcion", $descripcion);
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
        $sql = $con->prepare("SELECT id,nombre,unidad,precio,oferta,descripcion from producto;");
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
        header("location: ../php/error.php");
    }
    $con = null;
    return $retorno;
}
function editarProducto($id, $titulo, $publicacion, $tipo, $contenido, $fecha)
{
    $retorno = false;
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("UPDATE producto set nombre=:nombre , unidad=:unidad, precio=:precio, oferta=:oferta, descripcion=:descripcion where id=:id;");
        $sql->bindParam(":id", $id);
        $sql->bindParam(":nombre", $nombre);
        $sql->bindParam(":unidad", $unidad);
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":descripcion", $descripcion);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $retorno = true;
        }
    } catch (PDOException $e) {
        header("location: ../php/error.php");
    }
    $con = null;
    return $retorno;
}
?>