package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String savedId = "aaa";
		
		HttpSession session = request.getSession();
		String userId = request.getParameter("user_id");
		
		if(userId.equals(savedId)) {
			session.setAttribute("userId",userId);
			response.sendRedirect("success.jsp");
		}else {
			response.sendRedirect("fail.jsp");
		}
	}
}
