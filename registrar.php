<html>

<body>
<?php

include 'model/conexion.php';

$nombre = $_POST["nombre"];
$email = $_POST["email"];
$mensaje = $_POST["mensaje"];

$insertar = "INSERT INTO informacion (nombre, email, mensaje) VALUES ('$nombre', '$email', '$mensaje')";

$resultado=mysqli_query($conexion, $insertar);

if(!$resultado){
    echo "DATOS NO INSERTADOS ";

}else{

    echo "SUS DATOS SE REGISTRARON EXITOSAMENTE";



}

?>

</body>

</html>