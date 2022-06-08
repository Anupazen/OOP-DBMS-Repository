package com;

import java.sql.Date;

public class ConfirmBooking {

	public String name;
	public int age;
	public String Nationality;
	public String Email;
	public Date CIDate;
	public Date CODate;
	public String ArrivalTime;
	public String tid;
	public int tno;
	
	public ConfirmBooking(String name, int age, String nationality, String email, Date cIDate, Date cODate,
			String arrivalTime, String tid, int tno) {
		super();
		this.name = name;
		this.age = age;
		Nationality = nationality;
		Email = email;
		CIDate = cIDate;
		CODate = cODate;
		ArrivalTime = arrivalTime;
		this.tid = tid;
		this.tno = tno;
	}

	public ConfirmBooking() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getNationality() {
		return Nationality;
	}

	public void setNationality(String nationality) {
		Nationality = nationality;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public Date getCIDate() {
		return CIDate;
	}

	public void setCIDate(Date cIDate) {
		CIDate = cIDate;
	}

	public Date getCODate() {
		return CODate;
	}

	public void setCODate(Date cODate) {
		CODate = cODate;
	}

	public String getArrivalTime() {
		return ArrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		ArrivalTime = arrivalTime;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}
	
	
	
}
