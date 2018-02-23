<?php
    $edad = $_POST["edad"]; 
    if ($_POST['nombre']!== "" && $edad>=18 ) {
        include("_header.html");
        include("lab9.php");
    } else { 
        header("location: intro.php");
    }
?>