package com.klr.sc.dto;

public class CartDto {
	private int sl;
	private int cakeid;
	private int count;
	private int user_id;
	
	
	public int getSl() {
		return sl;
	}
	public void setSl(int sl) {
		this.sl = sl;
	}
	public int getCakeid() {
		return cakeid;
	}
	public void setCakeid(int cakeid) {
		this.cakeid = cakeid;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "CartDto [cakeid=" + cakeid + ", count=" + count + "]";
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	
}
