package com.kapil;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class Logout extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		HttpSession session=request.getSession();
		session.removeAttribute("userName");
		session.invalidate();
		response.sendRedirect("index.jsp");
	}

}
