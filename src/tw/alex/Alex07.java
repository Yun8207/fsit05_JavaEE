package tw.alex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Alex07")
public class Alex07 extends HttpServlet {

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html; charset=UTF-8");//must be before writer
		
		PrintWriter writer = response.getWriter();
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");
		String ret = "";
		String select ="";
		boolean isInit = true;
		
		int intX = 0;
		try {
			intX = Integer.parseInt(x);
			isInit = false;
		}catch(NumberFormatException e) {
			x ="";
		}
		
		int intY = 0;
		try {
			intY = Integer.parseInt(y);
			isInit = false;
		}catch(NumberFormatException e) {
			y= "";
		}
		
	
		
		if (!isInit) {
			int intResult =0;
			switch(op) {
			case "+": intResult = intX + intY; break;
			case "-": intResult = intX - intY; break;
			case "x": intResult = intX * intY; break;
			case "/": intResult = intX / intY; break;
			}
			ret += intResult;
		}else {
			op = "";
		}
		
		writer.append("<form action ='Alex07' method='get'>"); 
		writer.append("<input name='x' value ="+ x +"> "); 
		writer.append(" <select name ='op'> ");
		writer.append(" <option "+(op.equals("+")?"selected":"")+">+</option> ");
		writer.append(" <option "+(op.equals("-")?"selected":"")+">-</option> ");
		writer.append(" <option "+(op.equals("x")?"selected":"")+">x</option> ");
		writer.append(" <option "+(op.equals("/")?"selected":"")+">/</option> ");
		writer.append(" </select> ");
		writer.append("<input name='y' value ="+ y +"> ");
		writer.append("<input type='submit'  value='='>");  
		writer.append(" "+ret);
		
		
		
		
		//writer.append(intX + "+" + intY + "=" + intResult);
		
		writer.flush();
	}

	
	

}
