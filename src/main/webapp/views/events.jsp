<%--
  Created by IntelliJ IDEA.
  User: marlo
  Date: 12/08/2025
  Time: 09:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Eventos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<h1>Eventos</h1>
<table class="table table-strped">
    <thead>
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Fecha</th>
        <th>Ubicacion</th>
        <c:if test="${sessionScope.role == 'ADMIN'}">
            <th>Acciones</th>
        </c:if>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="event" items="${events}">
        <tr>
            <td>${event.id}</td>
            <td>${event.name}</td>
            <td>${event.date}</td>
            <td>${event.location}</td>
            <c:if test="${sessionScope.role == 'ADMIN'}">
                <td>
                <form action="/admin/delete-event" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${event.id}">
                    <button type="submit" class="btn btn-danger btn-sm">Borrar</button>
                </form>
                </td>
            </c:if>
        </tr>
    </c:forEach>
    </tbody>
</table>
<c:if test="${sessionScope.role == 'ADMIN'}">
    <a href="/admin/events" class="btn btn-success">Crear Evento</a>
</c:if>
</body>
</html>
