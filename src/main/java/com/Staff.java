package com;

import java.sql.Date;

public class Staff {
	public int emp_id;
	public int d_id;
	public int age;
	public int phone;
	public Date date_joined;
	public String department;
	public String etf_no;
	public String name;
	
	public Staff(int emp_id, int d_id, int age, int phone, Date date_joined, String department, String etf_no,
			String name) {
		super();
		this.emp_id = emp_id;
		this.d_id = d_id;
		this.age = age;
		this.phone = phone;
		this.date_joined = date_joined;
		this.department = department;
		this.etf_no = etf_no;
		this.name = name;
	}

	public int getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}

	public int getD_id() {
		return d_id;
	}

	public void setD_id(int d_id) {
		this.d_id = d_id;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public Date getDate_joined() {
		return date_joined;
	}

	public void setDate_joined(Date date_joined) {
		this.date_joined = date_joined;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEtf_no() {
		return etf_no;
	}

	public void setEtf_no(String etf_no) {
		this.etf_no = etf_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
