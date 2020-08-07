package toDoApp.login;

import toDoApp.todo.TodoService;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

    private LoginService loginService = new LoginService();
    private TodoService todoService = new TodoService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,response);


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        response.sendRedirect("/toDoApp_war_exploded/todo.do");

//       boolean isUserValid = loginService.isUserValid(request.getParameter("name"),request.getParameter("password"));
//       if (isUserValid){
//          response.sendRedirect("/todo.do");
//
//       }else {
//           request.setAttribute("errorMessage","Invalid Credentials");
//           request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,response);
//       }


    }


}
