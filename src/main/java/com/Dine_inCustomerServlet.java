package com;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Dine_inCustomerServlet")
public class Dine_inCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String PackageID=request.getParameter("PackageID");
		String name=request.getParameter("name");
		String Age=request.getParameter("Age");
		String Nationality=request.getParameter("Nationality");
		String Email=request.getParameter("Email");
		String time=request.getParameter("time");
		String ciDate=request.getParameter("ciDate");
		
		Dine_inView rm=new Dine_inView();
		boolean issuccess= rm.insert(PackageID,name,Age,Nationality,Email,time,ciDate);//sending data to customerDButil and capture details
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
