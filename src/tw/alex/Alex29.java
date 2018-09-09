package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Java29")
public class Alex29 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html, charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		int a = 10, b =0;
		try {
			out.println(a/b);
		}catch(Exception e) {
			response.sendError(HttpServletResponse.SC_BAD_GATEWAY, "Server Busy");
			//response.sendRedirect("Alex30");
		}
		
		
		
	}

	

}
