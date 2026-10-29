package servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        if (id.equals("a") && pw.equals("1111")) {
            Cookie cookie = new Cookie("id", id);
            cookie.setMaxAge(60 * 60);
            response.addCookie(cookie);
            response.sendRedirect("cookie.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
	}
}
