<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle de Canción</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            max-width: 600px;
        }
        h1 {
            color: #333;
        }
        .detalle {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
        }
        .campo {
            margin-bottom: 15px;
        }
        .campo strong {
            display: inline-block;
            width: 180px;
            color: #555;
        }
        .volver {
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #667eea;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .volver:hover {
            background-color: #764ba2;
        }
        .btn-editar {
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin-right: 10px;
        }
        .btn-editar:hover {
            background-color: #45a049;
        }
        .buttons {
            margin-top: 20px;
        }
</head>
<body>
    <div class="container">
        <h1>Detalle de la Canción</h1>
        
        <div class="detalle">
            <div class="campo">
                <strong>ID:</strong> ${cancion.id}
            </div>
        <div class="campo">
            <strong>Título:</strong> ${cancion.titulo}
        </div>
        <div class="campo">
            <strong>Artista:</strong> ${cancion.artista}
        </div>
        <div class="campo">
            <strong>Álbum:</strong> ${cancion.album}
        </div>
        <div class="campo">
            <strong>Género:</strong> ${cancion.genero}
        </div>
        <div class="campo">
            <strong>Idioma:</strong> ${cancion.idioma}
        </div>
        <div class="campo">
            <strong>Fecha de Creación:</strong> ${cancion.fechaCreacion}
        </div>
        <div class="campo">
            <strong>Fecha de Actualización:</strong> ${cancion.fechaActualizacion}
        </div>
        
        <a href="/canciones/formulario/editar/${cancion.id}" class="btn-editar">Editar Canción</a>
        <a href="/canciones" class="volver">Volver a lista de canciones</a>
        </div>
    </div>
</body>
</html>
```

