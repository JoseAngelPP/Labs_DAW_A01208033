<?php
    session_start();
    require_once("util.php");
    
    if(isset($_SESSION["nombre"]))
    {
        include("partials/_header.html");
        
        $nombre = $_SESSION["nombre"];
        $apellido = $_SESSION["apellido"];
        
        include("partials/_dentroForm.html");
        include("partials/_footer.html"); 
        
    }else if ($_POST["nombre"]=="Angel" && $_POST["password"]=="123" ) {
        
        unset($_SESSION["error"]);
        
        $_SESSION["nombre"] = $_POST["nombre"];
        $_SESSION["apellido"] = $_POST["apellido"];
        
        $nombre = $_SESSION["nombre"];
        $apellido = $_SESSION["apellido"];
        
        include("partials/_header.html");
        include("partials/_dentroForm.html");
        include("partials/_footer.html"); 
        
    } else if($_POST["usuario"]!="Angel" || $_POST["password"]!="123") {
        
        $_SESSION["error"] = "Usuario y/o contraseña incorrectos";
        header("location: index.php");
    }
    
?>