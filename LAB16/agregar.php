<?php
    session_start();
    require_once("util.php");
    if(isset($_SESSION["nombre"]) ) {
        if(isset($_POST["name"]) != NULL ) {
            agregarContacto($_POST["name"]["lastname"]["age"]);
            /*unset($_SESSION["error_archivo"]);
            $target_file = $target_dir . basename($_FILES["name"]["lastname"]["age"]);
            $uploadOk = 1;
            // Check if file already exists
            if (file_exists($target_file)) {
                 $_SESSION["error_archivo"] =  "El registro ya existe";
                $uploadOk = 0;
            }
            else if(isset($_SESSION["error_archivo"])) {
                $_SESSION["error_archivo"] = "Si se esta procesando el archivo";
                header("location:add.php");
            }
            else {
                echo "123";
                agregarContacto($_POST["name"]["lastname"]["age"], basename($_FILES["name"]["lastname"]["age"]));
                header("location:login.php");
            }
            //crearProducto($_POST["name"], basename($_FILES["name"]["lastname"]["age"]));
            *///header("location:login.php");
        } else {
            echo "3";
            $_SESSION["error_archivo"] = "No se esta procesando el archivo";
            header("location:crear.php");
        }
    } else {
        header("location:index.php");
    }
?>