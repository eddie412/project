package com.tr.VO;


public class CartVO {
	private String cId;
	private String cNo;
	private String cInfo;
	private int cPrice;
	private int cCount;
	private int Totla;
	
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
	}
	public String getcInfo() {
		return cInfo;
	}
	public void setcInfo(String cInfo) {
		this.cInfo = cInfo;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public int getcCount() {
		return cCount;
	}
	public void setcCount(int cCount) {
		this.cCount = cCount;
	}
	public int getTotla() {
		return Totla;
	}
	public void setTotla(int totla) {
		Totla = totla;
	}
	
	
}
