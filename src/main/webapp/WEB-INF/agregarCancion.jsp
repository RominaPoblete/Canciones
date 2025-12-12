<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Canción</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            max-width: 600px;
            margin: 0 auto;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
            font-weight: bold;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        input:focus, textarea:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 5px rgba(102, 126, 234, 0.5);
        }
        .error {
            color: #d32f2f;
            font-size: 12px;
            margin-top: 5px;
        }
        button {
            background-color: #667eea;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #764ba2;
        }
        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
        .back-link a {
            color: #667eea;
            text-decoration: none;
            font-weight: bold;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Agregar Nueva Canción</h1>
        
        <form:form method="POST" action="/canciones/procesa/agregar" modelAttribute="cancion">
            <div class="form-group">
                <label for="titulo">Título:</label>
                <form:input path="titulo" id="titulo" type="text" />
                <form:errors path="titulo" cssClass="error" />
            </div>
            
            <div class="form-group">
                <label for="artista">Artista:</label>
                <form:input path="artista" id="artista" type="text" />
                <form:errors path="artista" cssClass="error" />
            </div>
            
            <div class="form-group">
                <label for="album">Álbum:</label>
                <form:input path="album" id="album" type="text" />
                <form:errors path="album" cssClass="error" />
            </div>
            
            <div class="form-group">
                <label for="genero">Género:</label>
                <form:input path="genero" id="genero" type="text" />
                <form:errors path="genero" cssClass="error" />
            </div>
            
            <div class="form-group">
                <label for="idioma">Idioma:</label>
                <form:input path="idioma" id="idioma" type="text" />
                <form:errors path="idioma" cssClass="error" />
            </div>
            
            <button type="submit">Guardar Canción</button>
        </form:form>
        
        <div class="back-link">
            <a href="/canciones">Volver a lista de canciones</a>
        </div>
    </div>
</body>
</html>
