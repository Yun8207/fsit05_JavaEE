package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Alex15")
public class Alex15 extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		RequestDispatcher dispatcher1 = request.getRequestDispatcher("Alex16");
		
		out.println("<h1>Alex big Company</h1>");
		
		String name = request.getParameter("name");
		if(name == null) {
			dispatcher1.forward(request, response);
		}else {
			out.println("Hello" + name);
		}
	}

	

}
