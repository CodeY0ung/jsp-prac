package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class FormServlet2
 */
@WebServlet("/FormServlet2")
public class FormServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		System.out.println("name: "+name);
		String gender = request.getParameter("gender");
		System.out.println("gender: "+gender);
		String[] hobby = request.getParameterValues("hobby");
		System.out.println("hobby1: "+hobby[0]);
		System.out.println("hobby2: "+hobby[1]);
		
		out.println("이름 :"+name);
		out.println("성별 :"+gender);
		out.println("취미1 :"+hobby[0]);
		out.print("취미2 :"+hobby[1]);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
