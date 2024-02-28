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
    <jsp:include page="/layout/header.jsp"/>

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
            <% for (Student s :(List<Student>)request.getAttribute("students")){ %>
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
                    <td><a class="btn btn-primary" href="edit-student?id=<%=s.getId() %>">EDIT </a></td>
                    <td><a class="text-danger" onclick="deleteStudent(<%= s.getId() %>) " href="javascript:void(0);">Delete</a></td>
                    <td><a class="text-success" onclick="likeStudent(<%= s.getId() %>) " href="javascript:void(0);">Like</a></td>
                </tr>
            <%}%>
        </tbody>
    </table>

<a class="btn btn-primary" href="create-student">CREATE STUDENT</a>
<a class="btn btn-primary" href="list-favourit">FAVOURIT STUDENT</a>
</body>
</html>
<script type="text/javascript">
    function deleteStudent(id) {
        if(confirm("Are you sure?")) {
            var url = `list_student?id=` + id;
            fetch(url, {
                method: 'DELETE'
                // body: formData
            }).then(rs => {
                if (confirm("Reload page?"))
                    window.location.reload();
            }).error(err => {
                alert(err)
            })
        }
    }

    function likeStudent(id){
        if(confirm("Are you sure?")) {
            var url = `list-student?id=` + id;
            fetch(url, {
                method: 'POST'
                // body: formData
            }).then(rs => {
                if (confirm("Like student successfully! Reload page?"))
                    window.location.reload();
            }).error(err => {
                alert(err)
            })
        }
    }
</script>