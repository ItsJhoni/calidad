<?php
$usuario = "root";
$contrasena = "";
$nombre_bd = "bd_concesionaria";

$conexion=mysqli_connect("localhost:3306","root", "", "bd_concesionaria");

try {
	$bd = new PDO (
		'mysql:host=localhost:3306;
		dbname='.$nombre_bd,
		$usuario,
		$contrasena
	);
} catch (Exception $e) {
	echo "Problema con la conexión: ".$e->getMessage();
}

?>