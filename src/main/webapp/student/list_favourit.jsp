<%@ page import="wcd.jpa.entities.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="wcd.jpa.entities.Subject" %><%--
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
<a href="list_student">List Student </a>

<h1>List Student</h1>

<table class="table">
    <thead>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Address</th>
    <th>Class</th>
    <th>Subjects</th>
    <th></th>
    <th></th>
    </thead>
    <tbody>
    <% for (Student s :(List<Student>)request.getAttribute("likedStudents")){ %>
    <tr>
        <td><%=s.getId() %></td>
        <td><%=s.getName() %></td>
        <td><%=s.getEmail() %></td>
        <td><%=s.getAddress() %></td>
        <td><%=s.getClasses().getName()%></td>
        <td>
            <ul>
                <% for (Subject j: s.getSubjects()){ %>
                <li><%= j.getName() %></li>
                <% }%>
            </ul>
        </td>
    </tr>
    <%}%>
    </tbody>
</table>

</body>
</html>
