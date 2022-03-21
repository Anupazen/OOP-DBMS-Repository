package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;




public class staffDButil {
	
	public Connection connect() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3308/dbms_project", "root", "");
			// For testing
			System.out.print("Successfully connected");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}

	public static boolean validate (String userName,int Password)
	{
		ArrayList<Staff> sta=new ArrayList<>();
		boolean is=false;
		
		//create DB connection
		String url="jdbc:mysql://localhost:3308/dbms_project";
		String user="root";
		String pass="";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con= DriverManager.getConnection(url,user,pass);//connection
			Statement stmt=con.createStatement();//must writes
			String query="select * from staff where name='"+userName+"' and emp_id='"+Password+"'";
			ResultSet rs= stmt.executeQuery(query);//execute the query
			
			if(rs.next())
			{
				is=true;
				/*
				int eid=rs.getInt(1);
				int did=rs.getInt(2);
				int age=rs.getInt(3);
				int phone=rs.getInt(4);
				Date joined=rs.getDate(5);
				String dept=rs.getString(6);
				String etf=rs.getString(7);
				String name=rs.getString(8);
				
				Staff st1=new Staff(eid,did,age,phone,(java.sql.Date) joined,dept,etf,name);
				sta.add(st1);
				*/
			}
			else {
				is=false;
			}
		}
		catch(Exception e){
			e.printStackTrace();//retruns the error type
		}
		
		return is;
	}
	
	public static List<Staff> login (String userName,int Password) {
		ArrayList<Staff> sta=new ArrayList<>();
		boolean is=false;
		
		//create DB connection
		String url="jdbc:mysql://localhost:3308/dbms_project";
		String user="root";
		String pass="";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con= DriverManager.getConnection(url,user,pass);//connection
			Statement stmt=con.createStatement();//must writes
			String query="select * from staff where name='"+userName+"' and emp_id='"+Password+"'";
			ResultSet rs= stmt.executeQuery(query);//execute the query
			
			if(rs.next())
			{
				int eid=rs.getInt(1);
				int did=rs.getInt(2);
				int age=rs.getInt(3);
				int phone=rs.getInt(4);
				Date joined=rs.getDate(5);
				String dept=rs.getString(6);
				String etf=rs.getString(7);
				String name=rs.getString(8);
				
				Staff st1=new Staff(eid,did,age,phone,(java.sql.Date) joined,dept,etf,name);
				sta.add(st1);
			}
		}
		catch(Exception e){
			e.printStackTrace();//retruns the error type
		}
		
		return sta;
	}

}
