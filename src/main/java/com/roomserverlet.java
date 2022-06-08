package com;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class roomserverlet
 */
@WebServlet("/roomserverlet")
public class roomserverlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		roomview rv=new roomview();
		List<rooms> ro= rv.readItems();
		
		request.setAttribute("roomdetails", ro);
		RequestDispatcher dis = request.getRequestDispatcher("StaffMain.jsp");
		dis.forward(request, response);
	}

}
