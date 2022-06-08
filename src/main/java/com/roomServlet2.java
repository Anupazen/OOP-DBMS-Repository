package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.*;


@WebServlet("/roomServlet2")
public class roomServlet2 extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		
		String tid=request.getParameter("tid");
		String tno=request.getParameter("tno");
		String type=request.getParameter("type");
		String capacity=request.getParameter("capacity");
		String price=request.getParameter("price");
		
		roomview rm=new roomview();
		boolean issuccess= rm.updatedata(tid,tno,type,capacity,price);//sending data to customerDButil and capture details
		if(issuccess==true)
		{
			roomview rv=new roomview();
			List<rooms> ro= rv.readItems();
			request.setAttribute("roomdetails", ro);
			RequestDispatcher dis = request.getRequestDispatcher("StaffMain.jsp");
			dis.forward(request, response);// thest must be there
		}
		else
		{
			RequestDispatcher dis=request.getRequestDispatcher("invalid.jsp");
			dis.forward(request, response);//this must be there
		}
	}

	

}
