package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.Student;

public class StudentDao {
	
	public List<Student> getStudents(){
		
		String query = "SELECT * FROM student";
		List<Student> sl = new ArrayList<>();
		// class.forname 이걸 꼭 써야한다..
		try {
		        Class.forName("oracle.jdbc.OracleDriver");
		      } catch (ClassNotFoundException e) {
		          throw new RuntimeException("Oracle JDBC 드라이버를 찾을 수 없습니다.", e);
		      }
			
		try(Connection conn = DbUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(query);	
			){
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
					Student st = new Student();
					st.setStu_no(rs.getInt("stu_no"));
					st.setStu_dept(rs.getString("stu_dept"));
					st.setStu_name(rs.getString("stu_name"));
					st.setStu_height(rs.getInt("stu_height"));
					st.setStu_weight(rs.getInt("stu_weight"));
					st.setGender(rs.getString("stu_gender"));
					sl.add(st);
				}
				
			} catch(SQLException e) {
				e.printStackTrace();
			}
		return sl;
	}
	
	public Student findByStuName(String name) {
		// 테이블 명 소문자로 바꾸니까 되노.
		String query = "SELECT * FROM student WHERE stu_name = ?";
		
		// class.forname 이걸 꼭 써야한다..
		try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Oracle JDBC 드라이버를 찾을 수 없습니다.", e);
        }
		
		try(Connection conn = DbUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(query);	
			){
				pstmt.setString(1, name);
				System.out.println("조회할 이름: [" + name + "]");

				try (ResultSet rs = pstmt.executeQuery()) {
				    System.out.println("조회 결과 존재 여부: " + rs.next());
				}
				try(ResultSet rs = pstmt.executeQuery();){
					if(rs.next()) {
						
						Student student = new Student();
						
						student.setStu_no(rs.getInt("stu_no"));
						student.setStu_name(rs.getString("stu_name"));
						
						return student;
					}
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		return null;
		
	}

}
