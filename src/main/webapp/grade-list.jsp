<%@ page import="java.util.List" %>
<%@ page import="com.j25.jspdemo.model.Grade" %><%--
  Created by IntelliJ IDEA.
  User: agata
  Date: 2019-09-18
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade List</title>
</head>
<body>
<table>
    <tr>
        <th>Id</th>
        <th>Przedmiot</th>
        <th>Data dodania</th>
        <th>Ocena</th>
    </tr>
    <%
        List<Grade> gradeList = (List<Grade>) request.getAttribute("moja_list");
        for (Grade grade : gradeList) {
            out.print("<tr>");
            out.print("<td>" + grade.getId() + "</td>");
            out.print("<td>" + grade.getSubject() + "</td>");
            out.print("<td>" + grade.getDateAdded() + "</td>");
            out.print("<td>" + grade.getValue() + "</td>");
            out.print("</tr>");
        }

    %>
</table>
</body>
</html>
