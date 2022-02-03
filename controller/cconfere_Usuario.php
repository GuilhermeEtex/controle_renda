<?php
    include_once('../model/conexao.php');
    include_once('../model/model_usuario.php');
    extract($_REQUEST,EXTR_OVERWRITE);

    $conferir = ConfereUsuario($conexao, $loginUsuariolog, $senhaUsuariolog);
   if ($conferir == "email"){
        echo("Email Incorreto");
    }else if($conferir == "senha"){
        echo("Senha nao confere");
        
    }
    else if ($conferir == "valida"){
        echo("login Feitooo");
        header("location:csessao.php");

    }   
    