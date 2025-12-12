<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mi Aplicación de Canciones</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            margin: 0;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            max-width: 500px;
            margin: 0 auto;
        }
        h1 {
            color: #333;
        }
        .btn {
            display: inline-block;
            padding: 12px 30px;
            margin: 10px;
            background-color: #667eea;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #764ba2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🎵 Bienvenido</h1>
        <p>Gestor de Canciones</p>
        <a href="/canciones" class="btn">Ver Canciones</a>
    </div>
</body>
</html>
