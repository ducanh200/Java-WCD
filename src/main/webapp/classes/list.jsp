<%@ page import="wcd.jpa.entities.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="wcd.jpa.entities.Classes" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22/01/2024
  Time: 4:24 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <jsp:include page="/layout/css.jsp"/>

</head>
<body>
<h1>List Class</h1>

<table class="table">
    <thead>
    <th>ID</th>
    <th>Name</th>
    <th>Room</th>
    <th>Semester</th>
    <th>Student count</th>
    <th></th>
    <th></th>
    </thead>
    <tbody>
    <% for (Classes s :(List<Classes>)request.getAttribute("classes")){ %>
    <tr>
        <td><%=s.id %></td>
        <td><%=s.name %></td>
        <td><%=s.room %></td>
        <td><%=s.semester %></td>
        <td><%=s.getStudents().size()%></td>
        <td><a class="btn btn-primary" href="edit-class?id=<%=s.getId() %>">EDIT </a></td>
    </tr>
    <%}%>
    </tbody>
</table>

<a class="btn btn-primary" href="create-class">CREATE </a>
</body>
</html>
