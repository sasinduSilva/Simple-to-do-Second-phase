<%--
  Created by IntelliJ IDEA.
  User: Sasindu
  Date: 8/7/2020
  Time: 6:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>toDo</title>
</head>
<body>
<p>your todos are:</p><br>

<ol>
    <c:forEach items="${todos}" var="todo">
        <li>${todo.name}</li>

    </c:forEach>


</ol>
</body>
</html>
