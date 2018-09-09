package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Alex28")
public class Alex28 extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html, charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		Cookie[] cookies = request.getCookies();
		HashMap<String, String> cookieMap = new HashMap<>();
		
		if(cookies != null) {
			for (Cookie cookie : cookies) {
				String key = cookie.getName();
				String value = cookie.getValue();
				cookieMap.put(key, value);
			}
		}
		
		if (cookieMap.containsKey("username")) {
			out.println(cookieMap.get("username"));
		}else {
			out.println("no cookies: username");
		}
		
	}


}//HW:remember me   1hr(24hr) login password(usehash)  
