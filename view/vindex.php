<?php
    include_once('../model/conexao.php');
    include_once('../model/model_usuario.php');
?>
<!DOCTYPE html>


<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="../style/stylesheet.css">
    </head>
    <body>
        <?php
        session_start();
        $valor = isset($_SESSION['nomeUsuario']) ? 'S' : 'N';
        echo($valor);?>
        
        <header>
            <h2>oi</h2>
        </header>
        <div>
            <form action="../controller/cadiciona_cartao.php" method="POST">
                <input type="text"name="n_cartao" value="nome_cartao" placeholder="insira o nome do cartao"/>
                <input type="text" name="v_cartao" value="vencimento_cartao" placeholder="data vencimento cartao"/>
                <input type="text"name="l_cartao" value="limite_cartao" placeholder="limite cartao"/>
                <button type="subimit">Enviar</button>
            </form>
        </div>


 
    
    </body>

</html>