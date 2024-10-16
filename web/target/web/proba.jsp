<%--
  Created by IntelliJ IDEA.
  User: Judit
  Date: 2024. 10. 04.
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
Ez a jsp oldal
<p>Mostani idő: <%= new java.util.Date()%>
</p>

<%
    double num = Math.random();
    if (num > 0.95) {
%>
<h2>Szerencsés napod van </h2>
<p>(<%= num%>)</p>
<%
} else {
%>
<h2>Sajnos most nem nyertél </h2>
<p>(<%= num%>)</p>
<%
    }
%>

<h3>Bevásárlólista:</h3>
<form method="get">
    <input type="checkbox" name="termek" value="Kenyér"> Kenyér<br/>
    <input type="checkbox" name="termek" value="Tej">Tej<br/>
    <input type="checkbox" name="termek" value="Sör">Sör<br/>
    <input type="submit" value="Vásárolj!!">
</form>

<%
    String[] termekek = request.getParameterValues("termek");
    if (termekek != null) {
%>
<h3>Ezeket a terméke(ke)t választottad ki:</h3>
<ul>
    <%
        for (int i = 0; i < termekek.length; ++i) {
    %>
    <li><%= termekek[i]%>
    </li>
    <% }
    %>
</ul>
<%
    }
%>

<c:if test="${empty termekek}">Sajnos üres</c:if>

<c:forEach items="${termekek}" var="termek">termek</c:forEach>
</body>
</html>
