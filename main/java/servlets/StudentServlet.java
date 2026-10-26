package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import dao.StudentDao;
import domain.Student;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // 요청 데이터 인코딩
	    request.setCharacterEncoding("UTF-8");

	    // 응답 데이터 인코딩
	    response.setContentType("text/html;charset=UTF-8");
		
		// 요청 처리
		String name = request.getParameter("stu_name");
		
		// dao
		StudentDao studentDao = new StudentDao();
		Student student = studentDao.findByStuName(name);
		
		// 응답
		PrintWriter out = response.getWriter();
		
		if(student==null) {
			out.print("student information is not exist");
		}
		else {
			int stu_no = student.getStu_no();
			String stu_name = student.getStu_name();

			out.print(stu_no);
			out.print(stu_name);			
		}
	}

}
