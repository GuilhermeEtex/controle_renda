<?php
             
    include_once("../model/conexao.php");
    include_once("../model/model_cartao.php");

    extract($_REQUEST,EXTR_OVERWRITE);
    if(adicionaCartao($conexao,$n_cartao,$v_cartao,$l_cartao)){
        echo' <script type="text/javascript"> alert("Dados cadastrado com sucesso!! Faça o login e aproveite.") </script> ';
    }
?>