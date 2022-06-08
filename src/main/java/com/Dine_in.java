package com;

public class Dine_in {
	
	public int PackageID;
	public String PackageName;
	public int NumberOfPeople;
	public int Price;
	public String Desription;
	
	
	
	public Dine_in() {
		
	}


	public Dine_in(int packageID, String packageName, int numberOfPeople, int price, String desription) {
		super();
		this.PackageID = packageID;
		this.PackageName = packageName;
		this.NumberOfPeople = numberOfPeople;
		this.Price = price;
		this.Desription = desription;
	}
	
	
	public int getPackageID() {
		return PackageID;
	}
	public void setPackageID(int packageID) {
		PackageID = packageID;
	}
	public String getPackageName() {
		return PackageName;
	}
	public void setPackageName(String packageName) {
		PackageName = packageName;
	}
	public int getNumberOfPeople() {
		return NumberOfPeople;
	}
	public void setNumberOfPeople(int numberOfPeople) {
		NumberOfPeople = numberOfPeople;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getDesription() {
		return Desription;
	}
	public void setDesription(String desription) {
		Desription = desription;
	}
	
	

}
