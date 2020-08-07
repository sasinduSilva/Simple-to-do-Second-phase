<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Sasindu
  Date: 8/3/2020
  Time: 5:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Braavo from JSP</title>
</head>
<body>
<!-- /* /////////////////////////////scriplet\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ */-->
<%
    Date date = new Date();
%>
<!-- /* /////////////////////////////scriplet\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ */-->
<div> Current Date is <%=date%></div> <!--Scriplet Experession-->

<h2>My name is ${name}</h2>
<h2>My password is ${password}</h2>
<p><font color="red">${errorMessage}</font></p>
<form action="/toDoApp_war_exploded/login.do" method="post">
    Enter your name <input type="text" name="name"> <br>
    Enter your password <input type="password" name="password"> <br>
    <input type="submit" value="login">
</form>



<%--<button value="next">--%>
<%--    <%--%>
<%--    request.getRequestDispatcher("WEB-INF/views/Dashboard.jsp").forward(request,response);--%>
<%--%>--%>
<%--</button>--%>
</body>
</html>
