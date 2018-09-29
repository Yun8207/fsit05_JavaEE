package tw.alex;

import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class MyReqListener implements ServletRequestListener {

	@Override
	public void requestDestroyed(ServletRequestEvent event) {
		System.out.println("a request");
		ServletRequest req = event.getServletRequest();
		String ip = req.getRemoteAddr();
		System.out.println(ip);
		
	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("end request");
		
	}
	
	

}
