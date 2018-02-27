<?php include("_header.html"); ?>

<h1>LABORATORIO 11, Validacion por el servidor</h1>
  <div class="row">
    <form class="col s12" action="logIn.php" method="POST">
      <div class="row">
        <div class="input-field col s12">
          <input placeholder="user" name="usuario" id="usuario" type="text" class="validate" >
          <label for="usuario">Usuario</label>
        </div>
       
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" name="password" type="password" class="validate" >
          <label for="password">Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input  class="btn waves-effect waves-light" type="submit" value="Entrar">
        </div>
      </div>
    </form>
  </div>
<?php include("_footer.html"); ?>