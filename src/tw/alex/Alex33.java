package tw.alex;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(
		urlPatterns = {"/Alex333","/Alex432", "/iii/ok"},
		initParams = {
				@WebInitParam(name="x", value="2"),
				@WebInitParam(name="y", value="3"),
		}
		
		)
public class Alex33 extends HttpServlet {
	private ServletConfig servletConfig;
	private ServletContext servletContext;
	public Alex33() {
		super();
		System.out.println("Alex33()");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("init()");
		super.init();
		
		servletConfig = getServletConfig();
		servletContext = getServletContext();
		
		String test1 = servletContext.getInitParameter("upload-dir");
		System.out.println(test1);
		
		String x = servletConfig.getInitParameter("x");
		String y = servletConfig.getInitParameter("y");
		
		System.out.println(x+":" +y);
		
		String rootPath = servletContext.getRealPath("/");
		System.out.println(rootPath);
		Set<String> rsPath = servletContext.getResourcePaths("/");
		for (String path : rsPath) {
			System.out.println(path);
		}
		

	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service()");
		super.service(req, resp);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		
		
		
	}

	

}
