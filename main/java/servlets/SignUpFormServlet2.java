package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class SignUpFormServlet2
 */
@WebServlet("/SignUpFormServlet2")
public class SignUpFormServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String userId = request.getParameter("user_id");
		String result;
		if(userId.equals("aaa")) {
			result = "중복된 id";
		}
		else {
			result = "사용 가능한 id";
		}
		out.print(result);
	}

}
