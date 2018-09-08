package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;


@WebServlet("/Alex22")
public class Alex22 extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();	
		
		
		String account = request.getParameter("account");
		String passwd = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", "root", "root");
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM accounts WHERE account = ?");
			pstmt.setString(1, account);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				String hPasswd = rs.getString("password");
				if(AlexAPI.ckPasswd(passwd, hPasswd)) {
					out.println("OK");
				}else {
					out.println("XX1");
				}
			}else {
				out.println("XX2");
			}
		}catch(Exception e) {
			
		}
		
	}

}
