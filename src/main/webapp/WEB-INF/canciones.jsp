<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Canciones</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        h1 {
            color: #333;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Lista de Canciones</h1>
    
    <table>
        <thead>
            <tr>
                <th>Título</th>
                <th>Artista</th>
                <th>Detalle</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${canciones}" var="cancion">
                <tr>
                    <td>${cancion.titulo}</td>
                    <td>${cancion.artista}</td>
                    <td>
                        <a href="/canciones/detalle/${cancion.id}">Detalle</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>