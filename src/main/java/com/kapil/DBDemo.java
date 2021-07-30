package com.kapil;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.jdi.connect.spi.Connection;

@WebServlet("/login")
public class DBDemo extends HttpServlet{

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
	{
		String userEmail=request.getParameter("userEmail");
		String userPassword=request.getParameter("userPassword");
		boolean flag=false;
		try {
			
			Class.forName("org.postgresql.Driver");
			String url="jdbc:postgresql://localhost:5432/userlogin";
			String username="postgres";
			String password="root";
			String query="Select * from users where email="+"'"+userEmail+"'"+" and password="+"'"+userPassword+"'";
			String page="";
			
			
			java.sql.Connection con=DriverManager.getConnection(url,username,password);
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(query);
			
			
			PrintWriter out=response.getWriter();
			
			flag=rs.next();	
			
			RequestDispatcher rd;
			
		while(flag) {
				
				
				HttpSession session=request.getSession();
				session.setAttribute("userName", rs.getString(3));
				page="welcome.jsp";
				rd=request.getRequestDispatcher(page);
				rd.forward(request, response);
				
		}
			if(!flag) {
				
				HttpSession session=request.getSession();
				session.setAttribute("message","Invalid user!!");
				page="index.jsp";
				rd=request.getRequestDispatcher(page);
				rd.forward(request, response);
				
			}
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
