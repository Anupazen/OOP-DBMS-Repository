package com;

public class rooms {
	public String Tid;
	public int t_no;
	public int capacity;
	public int price;
	
	public rooms(String tid, int t_no,int capacity,int price) {
		super();
		Tid = tid;
		this.t_no = t_no;
		this.capacity=capacity;
		this.price=price;
	}

	public String getTid() {
		return Tid;
	}

	public void setTid(String tid) {
		Tid = tid;
	}

	public int getT_no() {
		return t_no;
	}

	public void setT_no(int t_no) {
		this.t_no = t_no;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
}
