package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Alex01")
public class Alex01 extends HttpServlet {
       
    
    public Alex01() {
        System.out.println("Alex01()");
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		
		PrintWriter pw = response.getWriter();
		pw.append("Hello, World");
		pw.append("1234567");
		pw.flush();
		
//		response.getWriter()
//			.append("Served @: ")
//			.append(request.getContextPath());
	}


}
