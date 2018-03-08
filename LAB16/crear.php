<?php
    session_start();
    
    if(isset($_SESSION["nombre"]) ) {
        include("partials/_header.html");
        include("partials/_agregarForm.html");
        include("partials/_footer.html"); 
    } else {
        echo "Hola";
        //header("location:index.php");
    }
?>