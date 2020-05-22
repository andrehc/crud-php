<?php 

include 'db.php';

$curso = $_POST['nome_curso'];
$carga_horaria = $_POST['carga_horaria'];

$query = "INSERT INTO CURSOS(nome_curso, carga_horaria) VALUES('$curso', $carga_horaria)";

mysqli_query($conexao, $query);

header('location:index.php?pagina=cursos');
