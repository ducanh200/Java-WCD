<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 1/22/2024
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Class</title>
    <jsp:include page="/layout/css_formcreate.jsp"/>
</head>
<body>

<form method="post" class="form_create" action="create-class" >
    <div class="form-control">
        <label for="name"> Name</label>
        <br>
        <input type="text" name="name"  id="name" >
    </div>

    <div class="form-control">
        <label for="room"> Room</label>
        <br>
        <input type="text" name="room"  id="room">
    </div>
    <div class="form-control">
        <label for="semester"> Semester</label>
        <br>
        <input type="text" name="semester"  id="semester">
    </div>

    <button type="submit">Submit</button>
</form>


</body>
</html>
