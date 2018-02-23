<?php
    $n = "A";
    if ($_POST["usuario"]== $n && $_POST["password"]=="123" ) {
        include("_header.html");
        echo "Bienvenido ".$_POST["usuario"]; 
        echo "HOLA ".$_POST["nombre"];
    } else {
       header("location: lab9.php");
    }
    
?>