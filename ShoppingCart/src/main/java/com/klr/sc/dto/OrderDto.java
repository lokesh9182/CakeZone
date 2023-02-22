package com.klr.sc.dto;

public class OrderDto {
	
	private Long userid;
	private Long cakeid;
	private String cakename;
	private int cost;
	private int count;
	private String status;
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	public Long getCakeid() {
		return cakeid;
	}
	public void setCakeid(Long cakeid) {
		this.cakeid = cakeid;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "OrderDto [userid=" + userid + ", cakeid=" + cakeid + ", count=" + count + ", status=" + status + "]";
	}
	public String getCakename() {
		return cakename;
	}
	public void setCakename(String cakename) {
		this.cakename = cakename;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	
	

}
