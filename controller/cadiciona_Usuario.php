<?php
    include_once("../model/conexao.php");
    include_once("../model/model_usuario.php");

    extract($_REQUEST,EXTR_OVERWRITE);

    if(AdicionaUsuario($conexao, $nomeUsuario, $loginUsuario, $senhaUsuario)){
        echo '<script type= "text/javascript">alert("Usuario cadastradooooooooooooooooooooooooooooooo com sucesso")</script>';
    }