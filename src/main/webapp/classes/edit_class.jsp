<%@ page import="wcd.jpa.entities.Student" %>
<%@ page import="wcd.jpa.entities.Classes" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 1/22/2024
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Class</title>
    <jsp:include page="/layout/css_formcreate.jsp"/>
</head>
<body>
<% Classes classes = (Classes) request.getAttribute("classes");  %>
<form method="post" class="form_create" action="edit-class?id=<%= classes.getId() %>" >
    <div class="form-control">
        <label for="name"> Name</label>
        <br>
        <input value="<%=classes.getName()%>" type="text" name="name"  id="name" >
    </div>

    <div class="form-control">
        <label for="room"> Room</label>
        <br>
        <input type="text" value="<%=classes.getRoom()%>" name="room"  id="room" >
    </div>
    <div class="form-control">
        <label for="semester"> Semester</label>
        <br>
        <input type="text" value="<%=classes.getSemester()%>" name="semester"  id="semester">
    </div>
    <button type="submit">Submit</button>
</form>


</body>
</html>
