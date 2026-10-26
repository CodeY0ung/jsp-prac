package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class p2
 */
@WebServlet("/p2")
public class p2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("p2.jsp");
		
//		이 요청을 마무리 하지않고, 요청 처리를 p2.jsp에게 위임한다. request를 같이 넘기기 때문에 파라미터도 함께 넘어간다.
//		request.getRequestDispatcher("p2.jsp").forward(request, response);
	}
}
