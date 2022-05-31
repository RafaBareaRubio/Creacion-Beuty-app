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

    } catch (PDOException $e) {
        echo $e;
    }
}

function insertarServicio($precio, $oferta, $descripcion, $tipo, $nombre)
{
    try {
        $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['usuario'], $GLOBALS['pass']);
        $sql = $con->prepare("INSERT into servicio values(null,:precio,:oferta,:descripcion,:tipo,:nombre)");
        $sql->bindParam(":precio", $precio);
        $sql->bindParam(":oferta", $oferta);
        $sql->bindParam(":descripcion", $descripcion);
        $sql->bindParam(":tipo", $tipo);
        $sql->bindParam(":nombre", $nombre);
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
        $sql = $con->prepare("SELECT id,precio,oferta,descripcion,tipo,nombre from servicio;");
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

?>