<?php 

include 'db.php';

$nome = $_POST['nome_aluno'];
$data_nascimento = $_POST['data_nascimento'];

$query = "INSERT INTO ALUNOS(nome_aluno, data_nascimento) VALUES('$nome', '$data_nascimento')";

mysqli_query($conexao, $query);

header('location:index.php?pagina=alunos');
