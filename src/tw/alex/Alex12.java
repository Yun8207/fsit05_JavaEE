package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Alex12")
public class Alex12 extends HttpServlet {
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		
		RequestDispatcher dispatcher1 = request.getRequestDispatcher("Alex13?name=alex");
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("Alex14.html");
		
		
		
		out.println("<h1>Alex Big Company</h1>");
		out.println("I am Alex12:" +name);
		out.println("<hr>");
		
		dispatcher1.include(request, response);
		out.println("<hr>");
		dispatcher2.include(request, response);
		

	}

}
