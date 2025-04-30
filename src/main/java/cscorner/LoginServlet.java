package cscorner;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		try {
    			PrintWriter out = response.getWriter();
    			response.setContentType("text/html");
    			
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbctest", "root", "grishmasuresh");
				
				String n = request.getParameter("txtName");
				String p = request.getParameter("txtPassword");
				
				PreparedStatement ps = con.prepareStatement("select * from signup where name=? and password=?");
				ps.setString(1, n);
				ps.setString(2, p);
				ResultSet rs = ps.executeQuery();
				
				if (rs.next()) {
					RequestDispatcher rd = request.getRequestDispatcher("index.html");
					rd.forward(request, response);
				}
				else {
					out.println("<font color=red size=18>Login Failed!!<br<br>");
					out.println("<a href=login.jsp>Try Again!!</a>");
				}
				
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
    		
	}

}
