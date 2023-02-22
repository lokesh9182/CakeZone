package com.klr.sc.dto;

public class CakeDto {
	private String cakeid;
	private String name;
	private String caption;
	private String details;
	private int price;
	private String imageurl;
	private String category;
	
	public String getCakeid() {
		return cakeid;
	}
	public void setCakeid(String cakeid) {
		this.cakeid = cakeid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCaption() {
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	@Override
	public String toString() {
		return "CakeDto [cakeid=" + cakeid + ", name=" + name + ", caption=" + caption + ", details=" + details
				+ ", price=" + price + ", imageurl=" + imageurl + "]";
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	

}
