<?php
    function ConfereUsuario($conexao, $loginUsuariolog, $senhaUsuariolog){

        

        $query = "select * from tb_usuario where login_usuario = '{$loginUsuariolog}'";
        $result = mysqli_query($conexao, $query) or die (mysqli_error($conexao));

        if(mysqli_num_rows($result)>0){
            $rows = mysqli_fetch_array($result);
            $hash = $rows['senha'];
            if(password_verify($senhaUsuariolog, $hash)){
    
                return "valida";
            }
            else{
                return "senha";
            }
        }else{
            return"email";
        }
    }

    function AdicionaUsuario($conexao, $nomeUsuariocad, $loginUsuariocad, $senhaUsuariocad){

        $options = ['const'=>8];
        $hast = password_hash($senhaUsuariocad, PASSWORD_DEFAULT);

        $query = "INSERT INTO tb_usuario (nome_usuario, login_usuario, senha) VALUES ('{$nomeUsuariocad}', '{$loginUsuariocad}', '{$hast}')";

        return mysqli_query($conexao, $query);

    }