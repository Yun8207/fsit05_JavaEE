package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Alex06")
public class Alex06 extends HttpServlet {
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");//must be before writer
		
		PrintWriter writer = response.getWriter();
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		int intX = 0;
		try {
			intX = Integer.parseInt(x);
		}catch(NumberFormatException e) {
			
		}
		
		int intY = 0;
		try {
			intY = Integer.parseInt(y);
		}catch(NumberFormatException e) {
			
		}
		
		int intResult = intX + intY;
		
		
		
		writer.append(intX + "+" + intY + "=" + intResult);
		writer.flush();
		
	}

	
}
