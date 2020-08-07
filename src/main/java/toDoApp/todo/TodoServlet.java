package toDoApp.todo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;
import java.io.IOException;

@WebServlet(urlPatterns = "/todo.do")
public class TodoServlet extends HttpServlet {

    private TodoService todoService = new TodoService();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("todos",todoService.retrieveTodos());
        request.getRequestDispatcher("/WEB-INF/views/todo.jsp").forward(request,response);
    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response){
//
//
//
//    }
}
