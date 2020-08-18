<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>


<div class="container">
    <form action="/toDoApp_war_exploded/add_todo.do" method="post">
        <fieldset class="form-group">
        <label>Description</label><input type="text" name="todo" class="form-control"/><br/>
        </fieldset>
        <fieldset class="form-group">
        <label>Category</label><input name="category" type="text" class="form-control" /><br/>
        </fieldset>
        <input type="submit" value="add" class="btn btn-success"/>
    </form>
</div>

<%@ include file="../common/footer.jspf"%>


