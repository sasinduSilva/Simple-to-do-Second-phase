<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>


<div class="container">
    <form action="/toDoApp_war_exploded/login.do" method="post">
        Enter your name <input type="text" name="name"> <br>
        Enter your password <input type="password" name="password"> <br>
        <input type="submit" value="login">
    </form>
</div>

<%@ include file="../common/footer.jspf"%>

