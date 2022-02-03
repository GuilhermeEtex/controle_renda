<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <!--FontAwesome é usado para inserir icon no projeto-->
    <script src="https://kit.fontawesome.com/2c7c058c44.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Calculisssta</title>
    <link rel="stylesheet" type="text/css" href="../styless/estilo.css">
  </head>

  <body>
      <nav>
          <h1 class="tituloLogin">Controle de Renda</h1>
          <?php
          $login = filter_input(INPUT_POST,'loginUsuariolog', FILTER_SANITIZE_STRING);
          echo($login);
          ?>
          <div class="login">
            <form action="../controller/cconfere_Usuario.php" method="POST">
              <input type="text" id="login" name="loginUsuariolog" placeholder="Login"/>
              <input type="password" id="senha" name="senhaUsuariolog" placeholder="Senha"/>
              <button class="logar">Entrar</button>
          
            </form>
          </div>
      </nav>
      <div>
        <h2>Ainda não é um usuario? Cadastre-se</h2>
        <div>
          <form action="../controller/cadiciona_Usuario.php" method="POST">
            <input type="text" id="nome" name="nomeUsuariocad" placeholder="Seu Nome"/>
            <input type="text" id="login" name="loginUsuariocad" placeholder="LOGIN"/>
            <input type="text" id="senha" name="senhaUsuariocad" placeholder="Senha"/>
            <button class="cadastrar">Cadastrar</button>
          </form>
        </div>
      </div>
