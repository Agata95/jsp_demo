<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<h2>Tabliczka mnożenia</h2>

<%--Tworzenie formularza--%>
<form action="index.jsp" method="post">
    Rozmiar X: <input type="number" min="1" name="wielkosc_x">
    <br/>
    <br/>
    Rozmiar Y: <input type="number" min="1" name="wielkosc_y">
    <br/>
    <br/>
    <input type="submit">
</form>


<table>
    <%
        // request to rządanie od klienta
        String wielkoscX = request.getParameter("wielkosc_x");
        // domyślnie wstawia 10, jeśli klient nie poda dokładnej wielkości
        int rozmiarX = 10;
        try {
            rozmiarX = Integer.parseInt(wielkoscX);
        } catch (NumberFormatException nfe){

        }

        String wielkoscY = request.getParameter("wielkosc_y");
        int rozmiarY = 10;
        try {
            rozmiarY = Integer.parseInt(wielkoscY);
        } catch (NumberFormatException nfe){

        }

        for (int i = 1; i <= rozmiarY; i++) {
            out.print("<tr>");
            for (int j = 1; j <= rozmiarX; j++) {
                out.print("<td>");
                out.print(i * j);
                out.print("</td>");
            }
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
