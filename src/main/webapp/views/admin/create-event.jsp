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
    <title>Create Event</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<h1>Create Event</h1>
<form action="${pageContext.request.contextPath}/admin/events" method="post">
    <div class="mb-3">
        <label>Nombre</label>
        <input type="text" name="name" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>Fecha</label>
        <input type="date" name="date" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>Ubicación</label>
        <input type="text" name="location" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary">Crear</button>

    <a href="${pageContext.request.contextPath}/events" class="btn btn-secondary">Regresar</a>

</form>
</body>
</html>
