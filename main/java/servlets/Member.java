package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class Member
 */
@WebServlet("/member")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String savedId = "aaa";
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		if(userId == null || !userId.equals(savedId)) {
			response.sendRedirect("login.jsp");
		}else {
			// 페이지 주소로 직접 접근하면 접근이 된다. 그래서 request forwarding을 사용함.
			response.sendRedirect("member.jsp");
		}
	}

}
