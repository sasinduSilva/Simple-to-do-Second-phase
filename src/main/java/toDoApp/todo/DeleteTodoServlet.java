package toDoApp.todo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet {

        TodoService todoService = new TodoService();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        todoService.deleteTodo(new Todo(request.getParameter("todo")));
        response.sendRedirect("/toDoApp_war_exploded/todo.do");


    }
}
