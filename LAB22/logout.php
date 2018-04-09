<?php
    session_start();
    session_unset();
    session_destroy();
    include("partials/_logout.html");
    header("location:index.php");
?>