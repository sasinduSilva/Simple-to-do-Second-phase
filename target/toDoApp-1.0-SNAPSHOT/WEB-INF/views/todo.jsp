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
<h1>Welcome ${name}</h1>
<p>your todos are:</p><br>

<ol>
    <c:forEach items="${todos}" var="todo">
        <li>${todo.name} &nbsp; &nbsp; <a href="/toDoApp_war_exploded/delete-todo.do?todo=${todo.name}">Delete</a></li>

    </c:forEach>


</ol>



<form action="/toDoApp_war_exploded/todo.do" method="post">
    <input type="text" name="todo"/> <input type="submit" value="add"/>
</form>
</body>
</html>
