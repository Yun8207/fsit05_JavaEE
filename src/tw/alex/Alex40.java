package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Alex40
 */
@WebServlet("/Alex40")
public class Alex40 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		int a = 0;
		while (true) {
			a = (int)(Math.random()*9+1);
			out.println(a + "<br>");
			System.out.println(a);
			if(a ==9) {
				out.println("game over");
				break;
			}else {
				try {
					Thread.sleep(1*1000);
				}catch (Exception e) {
					
				}
			}
		}
		
	}
}
