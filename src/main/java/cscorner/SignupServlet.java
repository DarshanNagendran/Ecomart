package cscorner;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handle GET requests
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><head>");
        out.println("<title>JDBC</title>");
        out.println("<link rel='stylesheet' href='master.css' type='text/css'>");
        out.println("</head>");
        out.println("<body>");
        
        out.println("<h1>Welcome</h1>");
        out.println("<a href='signup.jsp'>SignUp</a>");
        out.println("<h3>Already have an account? <a href='login.jsp'>Login</a> </h3>");
        out.println("</body></html>");
    }

    // Handle POST requests
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        
        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbctest", "root", "grishmasuresh");

            // Retrieve parameters from the request
            String username = request.getParameter("txtName");
            String email = request.getParameter("txtEmail");
            String password = request.getParameter("txtPassword");
            String cpwd = request.getParameter("txtCpwd");

            
                // User doesn't exist, insert the new user into the database
                String insertQuery = "INSERT INTO signup (name, email, password, confirm_password) VALUES (?, ?, ?, ?)";
                PreparedStatement insertPs = con.prepareStatement(insertQuery);
                insertPs.setString(1, username);
                insertPs.setString(2, email);
                insertPs.setString(3, password);
                insertPs.setString(4, cpwd);
                
                int rowsInserted = insertPs.executeUpdate();

                if (rowsInserted > 0) {
                	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
                } else {
                    out.println("<font color=red size=18>Error occurred while registering!<br>");
                    out.println("<a href='register.jsp'>Try Again</a>");
                }
            

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<font color=red size=18>Database Driver not found!</font>");
        } catch (SQLException e) {
            e.printStackTrace();
            out.println(e);
            out.println("<font color=red size=18>Database error occurred!</font>");
        }
    }
}
