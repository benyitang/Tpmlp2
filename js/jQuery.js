
function eliminar_poni(e) {
    let id = e.target.attributes[2].nodeValue;

        if (confirm('¿Estás seguro de que deseas eliminar a este poni?')) {
            fetch('php/eliminar_poni.php?id=' + id)
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    if (data.success) {
                        alert('Pony eliminado exitosamente');
                        e.target.parentNode.remove();
                    } else {
                        alert('Error al eliminar el poni');
                    }
                });
        }
    }