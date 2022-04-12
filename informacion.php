<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">

    <title>Solicitar informacion</title>
</head>

<?php include 'maqueta/menu.inc' ?>

<form action="registrar.php" method="POST">

        <p>Nombre: <input type="text" id="nombre" name="nombre" size="40"></p>

        <p>Email: <input type="email" id="email" name="email" size="40"></p>

        <p>Mensaje: 

        <br><textarea type="textarea" id="mensaje" name="mensaje" rows="3" cols="50"></textarea></br>

        <p>

        <input type="submit" value="Enviar">


        </p>

</form>
</body>
</html>



