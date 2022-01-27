

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	//Step 1: Prepare list of variables used for database connections
		 private String jdbcURL = "jdbc:mysql://localhost:3306/financetracker";
		 private String jdbcUsername = "root";
		 private String jdbcPassword = "password";
		 
	//Step 2: Prepare list of SQL prepared statements to perform CRUD to our database
		 private static final String SELECT_USER_BY_ID = "select iduser,id,name,surname,bio from profile where iduser =?";
	//Step 3: Implement the getConnection method which facilitates connection to the database via JDBC
		  protected Connection getConnection() {
		  Connection connection = null;
		  try {
		  Class.forName("com.mysql.jdbc.Driver");
		  connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		  } catch (SQLException e) {
		  e.printStackTrace();
		  } catch (ClassNotFoundException e) {
		  e.printStackTrace();
		  }
		  return connection;
		  }
    public ProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 String action = request.getServletPath();
	        try {
	            switch (action) {
	            case "/ProfileServlet/edit":
	                showProfile(request, response);
	                break;
	            }
	        } catch (SQLException ex) {
	            throw new ServletException(ex);
	        }
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
		private void showProfile(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, ServletException, IOException {
		// get parameter passed in the URL
        String iduser = request.getParameter("iduser");
        Profile existingProfile = new Profile(0,0,"","","");
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setString(1, iduser);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
            // Step 4: Process the ResultSet object
            while (rs.next()) {
                int userid = rs.getInt("iduser");
                int id= rs.getInt("id");
                String name = rs.getString("name");
                String surname = rs.getString("surname");
                String bio = rs.getString("bio");
                existingProfile = new Profile(userid,id, name, surname, bio);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        // Step 5: Set existingUser to request and serve up the userEdit form
        request.setAttribute("profile", existingProfile);
        request.getRequestDispatcher("/userProfile.jsp").forward(request, response);
    }
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
