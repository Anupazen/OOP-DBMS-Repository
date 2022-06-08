package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Dine_inView {

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
	
	public List<Dine_in> readItems() {
		ArrayList<Dine_in> app = new ArrayList<>();
		try {
			Connection con = connect();
			if (con == null) {
				System.out.print("Error while connecting to the database for reading.");
			}
			String query = "select * from dine_in ";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			// iterate through the rows in the result set
			while (rs.next()) {
				int PackageID=rs.getInt("PackageID");
				String PackageName = rs.getString("PackageName");
				int NumberOfPeople = rs.getInt("NumberOfPeople");
				int Price = rs.getInt("Price");
				String Description = rs.getString("Description");

				Dine_in r = new Dine_in(PackageID, PackageName, NumberOfPeople, Price,Description);
				app.add(r);
			}
			con.close();
		} catch (Exception e) {
			String output = "Error while reading the items.";
			System.err.println(e.getMessage());
		}
		return app;
	}

	public boolean insert(String packageID, String name, String age, String nationality, String email, String time,
			String ciDate) {
		boolean issuccess = false;

		int Age = Integer.parseInt(age);
		int pid = Integer.parseInt(packageID);
		
		
		//Date iDate=format.parse(CiDate);
		//Date oDate=format.parse(CoDate);
		
		try {
			Connection con = connect();
			if (con == null) {
				System.out.print("Error while connecting to the database for reading.");
			}
			String query = "INSERT INTO reserve_food VALUES('" + 0 + "','" + name + "','" + Age + "','" + nationality + "','" + email + "','" + time+ "','" + pid + "','" + ciDate + "')";
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
