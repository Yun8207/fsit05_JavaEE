package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import com.mysql.jdbc.Statement;


@WebServlet("/Alex21")
public class Alex21 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();	
		
		String account = request.getParameter("account");
		String passwd = request.getParameter("password");
		String realname = request.getParameter("realname");
		
		out.println("account:" + account);
		out.println("password:" + passwd);
		out.println("realname:" + realname);
		out.println("<hr>");
		
		
		passwd = BCrypt.hashpw(passwd, BCrypt.gensalt());
		out.println("hash passwd: " + passwd);
		out.println("length: " + passwd.length());
		
		testMySQL(account, passwd, realname);
	}

private void testMySQL(String account, String passwd, String realname) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", "root", "root");
			String sql = "INSERT INTO accounts (account, password, realname) VALUES (?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, account);
			pstmt.setString(2, passwd);
			pstmt.setString(3, realname);
			pstmt.executeUpdate();
			
			System.out.println("OK");
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}

}
