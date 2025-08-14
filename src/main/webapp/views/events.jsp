<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Events</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<h1>Events</h1>
<div class="d-flex justify-content-between mb-3">
    <c:if test="${sessionScope.role == 'ADMIN'}">
        <a href="${pageContext.request.contextPath}/admin/events" class="btn btn-success">Nuevo evento</a>
    </c:if>
    <a href="${pageContext.request.contextPath}/logout" class="btn btn-secondary">Logoff</a>
</div>
<table class="table table-striped">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Date</th>
        <th>Location</th>
        <c:if test="${sessionScope.role == 'ADMIN'}">
            <th>Actions</th>
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
                    <form action="${pageContext.request.contextPath}/admin/delete-event" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${event.id}">
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </c:if>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>