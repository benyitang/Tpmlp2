<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Galería de Ponis</title>
    <link rel="stylesheet" href="css/estilomlp.css">
</head>
<body>
    <section class="pony-gallery">
    <script src="js/jQuery.js"></script>
</body>
</html>
        <?php
include 'php/conexion_poni.php';
$sql = "SELECT * FROM ponis";
$result = $conn->query($sql);

while($row = $result->fetch_assoc()) {
    echo '<div class="pony">';
    echo '    <h3>' . $row['nombre'] . '</h3>';
    echo '    <img src="' . $row['imagen'] . '" alt="' . $row['nombre'] . '">';
    echo '    <p>' . $row['descripcion'] . '</p>';
    echo '    <button onclick= "eliminar_poni(event)" class="delete-button" data-id="' . $row['id'] . '">Eliminar</button>';
    echo '</div>';
}
