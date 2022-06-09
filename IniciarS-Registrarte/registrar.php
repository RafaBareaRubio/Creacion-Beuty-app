<?php

    $servidor = "localhost";
    $baseDatos = "creacion";
    $user = "root";
    $pass = "";

    $usuario=$_POST["usuario"];
    $contrasena= $_POST["contrasena"];
    $nombreYape=$_POST["nombreYape"];
    $dni=$_POST["dni"];
    $correo=$_POST["correo"];
    

    $letra = substr($dni, -1);
    $numeros = substr($dni, 0, -1);
  
    if($usuario=="" || $contrasena=="" || $nombreYape=="" || $dni=="" || $correo==""){
        
        echo "Debe rellenar todos los campos<br><br>";
        echo "<a href='index.php'>[Volver]</a>";

    }else if(substr("TRWAGMYFPDXBNJZSQVHLCKE", $numeros%23, 1) == $letra && strlen($letra) == 1 && strlen ($numeros) == 8){

        echo "DNI incorrecto<br><br>";
        echo "<a href='index.php'>[Volver]</a>";
    
    }else{

        try {
            $con = new PDO("mysql:host=" . $GLOBALS['servidor'] . ";dbname=" . $GLOBALS['baseDatos'], $GLOBALS['user'], $GLOBALS['pass']);
            $sql = $con->prepare("INSERT into usuario values(null, :usuario , :contrasena , :nombreYape , :dni , :correo)");
            $sql->bindParam(":usuario", $usuario);
            $sql->bindParam(":contrasena", $contrasena);
            $sql->bindParam(":nombreYape", $nombreYape);
            $sql->bindParam(":dni", $dni);
            $sql->bindParam(":correo", $correo);
            $sql->execute();
            $id = $con->lastInsertId();
            $con = null;
            if ($id != 0) {
                header("Location: ../index.php");
            } else {
                echo "Datos incorrectos<br><br>";
                echo "<a href='../index.php'>[Volver]</a>";
            }
        } catch (PDOException $e) {
            header("location: ../php/error.php");
        }

    }

?>