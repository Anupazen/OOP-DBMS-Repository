package com;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ConfirmBookingServlet")
public class ConfirmBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ConfirmBookingView cb=new ConfirmBookingView();
		
		String name=request.getParameter("name");
		String age=request.getParameter("Age");
		String nationality=request.getParameter("Nationality");
		String email=request.getParameter("Email");
		String cidate=request.getParameter("ciDate");
		String codate=request.getParameter("coDate");
		String ArrivalTime=request.getParameter("time");
		String tid=request.getParameter("tid");
		String tno=request.getParameter("tno");
		String rooms=request.getParameter("rooms");
		
		boolean issuccess=false;
		try {
			
			issuccess = cb.insert(name,age,nationality,email,cidate,codate,ArrivalTime,tid,tno,rooms);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		if(issuccess==true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("MainPage.jsp");
			dis.forward(request, response);// thest must be there
		}
		else
		{
			RequestDispatcher dis=request.getRequestDispatcher("invalid.jsp");
			dis.forward(request, response);//this must be there
		}
		
	}

}
