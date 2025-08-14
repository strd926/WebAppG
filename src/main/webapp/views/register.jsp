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
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<h1>Registro</h1>

<form action="${pageContext.request.contextPath}/register" method="post">

    <div class="mb-3">
        <label>Nombre</label>
        <input type="text" name="name" class="form-control" required>
    </div>

    <div class="mb-3">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required>
    </div>

    <div class="mb-3">
        <label>Password</label>
        <input type="password" name="password" class="form-control" required>
    </div>

    <div class="mb-3">
        <label>Rol (opcional)</label>
        <select name="role" class="form-select">
            <option value="USER">Usuario</option>
            <option value="ADMIN">Administrador</option>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Registrar</button>

        <a href="${pageContext.request.contextPath}/login" class="btn btn-secondary">Volver al Inicio</a>

</form>

</body>
</html>
