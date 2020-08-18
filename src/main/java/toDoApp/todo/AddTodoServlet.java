package toDoApp.todo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/add_todo.do")
public class AddTodoServlet extends HttpServlet {
    private TodoService todoService = new TodoService();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/add_todo.jsp").forward(request,response);


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        todoService.addTodo(new Todo(request.getParameter("todo"),request.getParameter("category")));
        response.sendRedirect("/toDoApp_war_exploded/list_todo.do");


    }
}
