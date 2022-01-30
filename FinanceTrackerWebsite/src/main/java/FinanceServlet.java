
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FinanceServlet
 */
@WebServlet("/FinanceServlet")
public class FinanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FinanceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected Boolean doPost(HttpServletRequest request, HttpServletResponse response, Long iduser, Float income, Integer saving) throws ServletException, IOException {
		response.setContentType("text/html");
		//Step 1: Initialize a PrintWriter object to return the html values via the response
		PrintWriter out = response.getWriter();
		
		
		//Step 3: attempt connection to database using JDBC, you can change the username and password accordingly using the phpMyAdmin > User Account dashboard
		try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con = DriverManager.getConnection(
		 "jdbc:mysql://localhost:3306/financetracker", "root", "password");
		//Step 4: implement the sql query using prepared statement (https://docs.oracle.com/javase/tutorial/jdbc/basics/prepared.html)
		 PreparedStatement ps = con.prepareStatement("insert into FINANCE values(?,?,?,?)");
		
		//Step 5: parse in the data retrieved from the web form request into the prepared statement accordingly
		 ps.setString(1, null);
		 ps.setLong(2, iduser);
		 ps.setFloat(3, income);
		 ps.setInt(4, saving);
		//Step 6: perform the query on the database using the prepared statement
		 int i = ps.executeUpdate();
		 //Step 7: check if the query had been successfully execute, return “You are successfully registered” via the response,
		 
		 
		 if (i > 0){
			 return true;
		 }
		 }
		 //Step 8: catch and print out any exception
		 catch (Exception exception) {
		 System.out.println(exception);
		 out.close();
		 }
		
		
		// TODO Auto-generated method stub
		doGet(request, response);
		return null;
	}

}
