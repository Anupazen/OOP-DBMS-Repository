package com;

import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConfirmBookingView {

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

	public boolean insert(String name, String age, String Nationality, String Email, String CiDate, String CoDate, String Time, String tid, String tno, String rooms) throws ParseException {
		boolean issuccess = false;

		int Age = Integer.parseInt(age);
		int Tno = Integer.parseInt(tno);
		int Rooms = Integer.parseInt(rooms);
		//System.out.println(date);
		
		
		//Date iDate=format.parse(CiDate);
		//Date oDate=format.parse(CoDate);
		
		try {
			Connection con = connect();
			if (con == null) {
				System.out.print("Error while connecting to the database for reading.");
			}
			String query = "INSERT INTO bookings VALUES('" + name + "','" + Age + "','" + Nationality + "','" + Email + "','" + CiDate + "','" + CoDate+ "','" + Time + "','" + tid + "','" + tno+ "','" + Rooms+ "')";
			Statement stmt = con.createStatement();
			int rs = stmt.executeUpdate(query);// execute the query
			con.close();

			if (rs > 0) {
				issuccess = true;
			} else {
				issuccess = false;
			}

		} catch (Exception e) {
			String output = "Error while inserting.";
			System.err.println(e.getMessage());
			System.err.println(output);
		}
		return issuccess;
	}
	
	

}
