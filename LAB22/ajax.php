<?php
    session_start();

    if($_GET["opcion"] == 1)
    {
        $_SESSION["usuario"] = $_GET["nombreGoogle"];
        header("location: index.php");   
    }
    if($_GET["opcion"] == 2)
    {
        $_SESSION["usuario"] = NULL;
        header("location: inside.php");   
    }
    
?>