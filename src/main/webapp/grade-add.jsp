<%--
  Created by IntelliJ IDEA.
  User: agata
  Date: 2019-09-18
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade List</title>
</head>
<body>
<form action="/grade-add" method="post">
    Przedmiot: <select name="grade_subject">
    <option value="ENGLISH">English</option>
    <option value="IT">It</option>
    <option value="POLISH">Polish</option>
    <option value="HISTORY">History</option>
    <option value="MATH">Math</option>
    <option value="PHYSICS">Physics</option>
    <option value="CHEMISTRY">Chemistry</option>
</select>
    <br/>
    Ocena: <input type="number" name="grade">
    <br/>
    <br/>
    <input type="submit">
</form>
</body>
</html>
