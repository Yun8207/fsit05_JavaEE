package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Alex05")
public class Alex05 extends HttpServlet {
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doTask(request, response, "get");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doTask(request, response, "post");
	}

	private void doTask(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");//must be before writer
		
		PrintWriter writer = response.getWriter();
		writer.append("Hello, World");
		writer.flush();
	}
	
}