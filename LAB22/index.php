<?php
session_start();

if(isset($_SESSION["usuario"]) ) {
    header("location: inside.php");    
} else {
    include("partials/_header.html");
    include("partials/_outside.html");
    include("partials/_footer.html");
}
?>
