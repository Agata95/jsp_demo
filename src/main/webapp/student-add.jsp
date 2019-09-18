<%@ page import="java.util.List" %>
<%@ page import="com.j25.jspdemo.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: agata
  Date: 2019-09-17
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student List</title>
</head>
<body>
<form action="/student-add" method="post">
    Imię: <input type="text" name="student_name">
    <br/>
    Nazwisko: <input type="text" name="student_lastname">
    <br/>
    Wiek: <input type="number" name="student_age">
    <br/>
    Is Alive: <input type="checkbox" name="student_isalive">
    <br/>
    <br/>
    <input type="submit"> <%--guzik dodania--%>
</form>
</body>
</html>
