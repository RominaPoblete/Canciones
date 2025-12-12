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
        }
        h1 {
            color: #333;
        }
        .detalle {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            max-width: 600px;
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
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .volver:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
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
    </div>
    
    <a href="/canciones" class="volver">Volver a lista de canciones</a>
</body>
</html>
```

4. **Guarda el archivo**

---

## **PASO 13: Ejecutar y Probar la Aplicación**

1. **En VSCode, abre** el archivo `CancionesApplication.java` (está en `src/main/java/com/tunombre/canciones/`)

2. **Haz clic derecho en el código** → **Run Java**

3. **Espera** a que la aplicación inicie. Verás algo como:
```
   Started CancionesApplication in X.XXX seconds
```

4. **Abre tu navegador** y ve a:
```
   http://localhost:8080/canciones