package com;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServerlet")
public class LoginServerlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// this is a cotroller class
	// this class get the details from interface to here
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("un");
		String password = request.getParameter("pw");

		int pw = Integer.parseInt(password);

		try {
			boolean istrue = staffDButil.validate(username, pw);// sending data to customerDButil and capture
																		// details

			if (istrue == true) {
				List<Staff> stadetails= staffDButil.login(username, pw);
				request.setAttribute("stadetails", stadetails);

				if(stadetails.get(0).getDepartment().equals("Management")) {
					RequestDispatcher dis = request.getRequestDispatcher("StaffMain.jsp");
					dis.forward(request, response);// thest must be there
				}
				if(stadetails.get(0).getDepartment().equals("Food")) {
					RequestDispatcher dis = request.getRequestDispatcher("chef.jsp");
					dis.forward(request, response);// thest must be there
				}
				if(stadetails.get(0).getDepartment().equals("Executive")) {
					RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
					dis.forward(request, response);// thest must be there
				}
				else {
					RequestDispatcher dis = request.getRequestDispatcher("MainPage.jsp");
					dis.forward(request, response);
				}
			} else {
				
				RequestDispatcher dis = request.getRequestDispatcher("invalid.jsp");
				dis.forward(request, response);// thest must be there
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
