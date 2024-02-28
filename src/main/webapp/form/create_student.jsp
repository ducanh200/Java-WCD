<%@ page import="wcd.jpa.entities.Classes" %>
<%@ page import="java.util.List" %>
<%@ page import="wcd.jpa.entities.Subject" %><%--
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

<form method="post" class="form_create" action="create-student" >
    <div class="form-control">
        <label for="name"> Name</label>
        <br>
        <input type="text" name="name"  id="name" >
    </div>

    <div class="form-control">
        <label for="email"> Email</label>
        <br>
        <input type="email" name="email"  id="email" placeholder="name@example.com">
    </div>
    <div class="form-control">
        <label for="address"> Address</label>
        <br>
        <input type="text" name="address"  id="address">
    </div>
    <div class="form-control">
        <label for="address"> Classname</label>
        <br>
        <select style="width: 300px;height: 30px" name="class_id">
            <% for (Classes s :(List<Classes>)request.getAttribute("classes")){ %>
            <option value="<%=s.getId() %>"> <%=s.getName()%></option>
            <%}%>
        </select>
    </div>
    <div class="form-control">
        <label for="flexCheckDefault"> Subject</label>
        <% for (Subject s: (List<Subject>)request.getAttribute("subjectList")){ %>
        <div class="form-check">
            <input style="margin-left: -80px;height:15px" name="subject_id[]" class="form-check-input" type="checkbox" value="<%= s.getId() %>" id="flexCheckDefault" >
            <%= s.getName() %>
        </div>
        <% } %>
    </div>
    <button type="submit">Submit</button>
</form>


</body>
</html>
