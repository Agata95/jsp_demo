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
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Is Alive</th>
    </tr>
    <%
        List<Student> studentList = (List<Student>) request.getAttribute("moja_ukochana_lista");
        for (Student student : studentList) {
            out.print("<tr>");
            out.print("<td>" + student.getId() + "</td>");
            out.print("<td>" + student.getName() + "</td>");
            out.print("<td>" + student.getSurname() + "</td>");
            out.print("<td>" + student.getAge() + "</td>");
            out.print("<td>" + student.isAlive() + "</td>");
            out.print("</tr>");
        }

    %>
</table>
</body>
</html>
