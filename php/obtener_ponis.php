<?php
// Conexión a la base de datos (reemplaza con tus credenciales)
// ...

$sql = "SELECT * FROM ponis";
$result = $conn->query($sql);

while($row = $result->fetch_assoc()) {
    echo '<div class="pony">';
    echo '    <h3>' . $row['nombre'] . '</h3>';
    echo '    <img src="' . $row['imagen'] . '" alt="' . $row['nombre'] . '">';
    echo '    <p>' . $row['descripcion'] . '</p>';
    echo '    <button class="delete-button" data-id="' . $row['id'] . '">Eliminar</button>';
    echo '</div>';
}