<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>



    <div class="container">
        <h1>Welcome ${name}</h1>


        <table class="table table-striped">
            <caption>your todos are</caption>
            <thead>
                <th>Descriptions</th>
                <th>Category</th>
                <th>Actions</th>
            </thead>
            <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.name}</td>
                    <td>${todo.category}</td>
                    <td>&nbsp;&nbsp;<a class="btn btn-danger" href="/toDoApp_war_exploded/delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a></td>
                </tr>

            </c:forEach>
            </tbody>

        </table>





        <a class="btn btn-success" href="/toDoApp_war_exploded/add_todo.do">Add New Todo</a>
    </div>
<%@ include file="../common/footer.jspf"%>


