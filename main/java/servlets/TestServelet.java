package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class TestServelet
 */
@WebServlet("/test")
public class TestServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// servlet에는 내장 객체가 없다. 그래서 인자로 받아온 request에서 얻어와야함.
		request.setAttribute("x", "request-x");
		HttpSession session = request.getSession();
		session.setAttribute("x", "session-x");
		String x = (String)session.getAttribute("x");
		
		ServletContext application = request.getServletContext();
		application.setAttribute("x","application-x");
		String x2 = (String)application.getAttribute("x");
		
		// servlet에는 page 객체가 없다.
		
		// response가 떨어지면 request는 끝난다. 그래서 request-x는 화면에 나오지 않는다.
		// response.sendRedirect("test.jsp");
		
		// request를 이용해서 test.jsp에다가 request영역을 복사해서 forward시켰음. 그러면 request-x가 화면에 나온다.
		request.getRequestDispatcher("test.jsp").forward(request, response);
	}

}
