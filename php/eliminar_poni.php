<?php
// Incluir el archivo de configuración
include 'conexion_poni.php';

// Obtener el ID del poni a eliminar desde la solicitud AJAX
$id = strval($_GET['id']);

// Preparar y ejecutar la consulta SQL
$sql = "DELETE FROM ponis WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $id);
$stmt->execute();

// Verificar si la eliminación fue exitosa
if ($stmt->affected_rows > 0) {
  echo json_encode(['success' => true]);
} else {
  echo json_encode(['success' => false, 'error' => $stmt->error]);
}

$stmt->close();
$conn->close();