<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://example.com/functions" prefix="f" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
    <table border="1">
        <tr>
            <th>Data</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
<c:forEach var="meal" items="${meals}">
        <tr><td><p>${f:formatLocalDateTime(meal.dateTime, 'yyyy-MM-dd HH:mm')}</p></td> <td><p>${meal.description}</p></td> <td><p>${meal.calories}</p></td></tr>
</c:forEach>
    </table>
</body>
</html>
