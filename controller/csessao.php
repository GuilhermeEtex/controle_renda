<?php
    session_start();
    include_once("../model/conexao.php");
    include_once("../model/model_usuario.php");
    
    /* Trazendo os dados do login por meio do Post e filtrando o email na Matriz*/
    $login = filter_input(INPUT_POST,'loginUsuariolog', FILTER_DEFAULT);
    print_r($login);

    $result_usuario="select * from tb_usuario where login_usuario = '{$login}'LIMIT 1";
    
    $resultado_usuario = mysqli_query($conexao,$result_usuario);
   

    if(($resultado_usuario) and ($resultado_usuario->num_rows !=0))     
    {   
        $dados=mysqli_fetch_array($resultado_usuario);
        
        $_SESSION['nomeUsuario']= $dados['nome_usuario'];
        $resultado='../View/vindex.php';
    }
    else
    {
        $resultado = "erro";
       
        echo(json_encode($resultado));
        
        
       
    }
    