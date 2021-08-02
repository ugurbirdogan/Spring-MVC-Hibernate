package testdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TestDb")
public class TestDB extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String user = "root";
		String password = "1234";
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/ogrenci_schema?useSSL=false";
		String driver = "com.mysql.jdbc.Driver";
		try {

			PrintWriter out = resp.getWriter();
			
			out.println("veritabanina baglanti: " +jdbcUrl);
			Class.forName(driver);
			
			Connection myConn = DriverManager.getConnection(jdbcUrl,user,password);
			out.println("basarili !!");
			
			myConn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(); 
		}
		
		
	}

}
