<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<hr>

<table border="4"; bordercolor="#000000"; cellpadding="5">
    <tr>
        <td>date/time</td>
        <td>description</td>
        <td>calories</td>
    </tr>

    <c:forEach var="meal" items="${meals}">
        <tr>
            <td>${meal.dateTime.toLocalDate()} ${meal.dateTime.toLocalTime()}</td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
