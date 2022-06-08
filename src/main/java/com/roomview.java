package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class roomview {

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

	public List<rooms> readItems() {
		ArrayList<rooms> app = new ArrayList<>();
		try {
			Connection con = connect();
			if (con == null) {
				System.out.print("Error while connecting to the database for reading.");
			}
			String query = "select t.Tid,t.t_no,t.capacity,t.price from type t ";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			// iterate through the rows in the result set
			while (rs.next()) {
				String TID = rs.getString("Tid");
				int t_no = rs.getInt("t_no");
				int t_capacity = rs.getInt("capacity");
				int t_price = rs.getInt("price");

				rooms r = new rooms(TID, t_no, t_capacity, t_price);
				app.add(r);
			}
			con.close();
		} catch (Exception e) {
			String output = "Error while reading the items.";
			System.err.println(e.getMessage());
		}
		return app;
	}

	public boolean updatedata(String tid, String tno, String type, String capacity, String price) {
		boolean issuccess = false;

		int cap = Integer.parseInt(capacity);
		int Price = Integer.parseInt(price);
		int Tno = Integer.parseInt(tno);
		try {
			Connection con = connect();
			if (con == null) {
				System.out.print("Error while connecting to the database for reading.");
			}
			String query = "UPDATE type set capacity=" + cap + ",price=" + Price + " where t_no=" + Tno + "";
			Statement stmt = con.createStatement();
			int rs = stmt.executeUpdate(query);// execute the query
			con.close();

			if (rs > 0) {
				issuccess = true;
			} else {
				issuccess = false;
			}

		} catch (Exception e) {
			String output = "Error while updating.";
			System.err.println(e.getMessage());
			System.err.println(output);
		}
		return issuccess;
	}

	public boolean insert(String tid, String tno, String type, String capacity, String price) {
		boolean issuccess = false;

		int cap = Integer.parseInt(capacity);
		int Price = Integer.parseInt(price);
		int Tno = Integer.parseInt(tno);
		try {
			Connection con = connect();
			if (con == null) {
				System.out.print("Error while connecting to the database for reading.");
			}
			String query = "INSERT INTO type VALUES('" + tid + "','" + Tno + "','" + cap + "','" + Price
					+ "')";
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

	public boolean delete(String tid, String tno) {
		boolean issuccess = false;

		int Tno = Integer.parseInt(tno);
		try {
			Connection con = connect();
			if (con == null) {
				System.out.print("Error while connecting to the database for reading.");
			}
			String query = "DELETE FROM type WHERE Tid=`tid` AND t_no="+Tno+"";
			Statement stmt = con.createStatement();
			int rs = stmt.executeUpdate(query);// execute the query
			con.close();

			if (rs > 0) {
				issuccess = true;
			} else {
				issuccess = false;
			}

		} catch (Exception e) {
			String output = "Error while Deleting.";
			System.err.println(e.getMessage());
			System.err.println(output);
		}
		return issuccess;
	}

}
