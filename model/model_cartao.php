<?php
   function adicionaCartao($conexao, $n_cartao,$v_cartao, $l_cartao){

    $query = "INSERT INTO tb_cartoes(nome_cartao, venc_fatura, limite_cartao)values('{$n_cartao}','{$v_cartao}','{$l_cartao}')";
    print($n_cartao);
    print($v_cartao);
    print($l_cartao);
    return mysqli_query($conexao, $query);

}
