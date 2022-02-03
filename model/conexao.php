<?php

$host="localhost:3306";
$root="root";
$senha="";
$banco="bd_controle_renda";

$conexao = mysqli_connect($host,$root,$senha,$banco) or die ("A conexão falhou <br> O erro informado é o seginte: ");

?>  