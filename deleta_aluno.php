<?php 

include 'db.php';

$id = $_GET['id_aluno'];

$query = "DELETE FROM ALUNOS WHERE ID_ALUNO = $id";

mysqli_query($conexao, $query);

header('location:index.php?pagina=alunos');
