<%@ page import="wcd.jpa.entities.Student" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 1/22/2024
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Student</title>
    <jsp:include page="/layout/css_formcreate.jsp"/>
</head>
<body>
<% Student student = (Student)request.getAttribute("student");  %>
<form method="post" class="form_create" action="edit-student?id=<%= student.getId() %>" >
    <div class="form-control">
        <label for="name"> Name</label>
        <br>
        <input value="<%=student.getName()%>" type="text" name="name"  id="name" >
    </div>

    <div class="form-control">
        <label for="email"> Email</label>
        <br>
        <input type="email" value="<%=student.getEmail()%>" name="email"  id="email" placeholder="name@example.com">
    </div>
    <div class="form-control">
        <label for="address"> Address</label>
        <br>
        <input type="text" value="<%=student.getAddress()%>" name="address"  id="address">
    </div>
    <button type="submit">Submit</button>
</form>


</body>
</html>
