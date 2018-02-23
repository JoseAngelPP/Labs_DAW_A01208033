<?php include("_header.html"); ?>

<h1>LABORATORIO 11, Validacion por el servidor</h1>
<?php
$nombre = $password = "";
?>

<form action="logIn.php" action="Entrar.php"  method = "post">  
  Escribe tu nombre: <input type="text" name="nombre">
  <br><br>
  Escribe tu password: <input type="text" name="password">
  <br><br>
  Escribe tu edad(Solo mayores a 18): <input type="number" name="edad">
  <br><br>
  <input type="submit" name="submit" value="Submit">  
</form>

