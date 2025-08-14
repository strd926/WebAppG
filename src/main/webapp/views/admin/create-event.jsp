<%--
  Created by IntelliJ IDEA.
  User: marlo
  Date: 12/08/2025
  Time: 09:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crear Evento</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<h1>Crear Evento</h1>
<form action="/admin/events" method="post">
    <div class="mb-3">
        <label>Fecha</label>
        <input type="date" name="date" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>Ubicacion</label>
        <input type="text" name="ubicacion" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary">Crear</button>
</form>
</body>
</html>
