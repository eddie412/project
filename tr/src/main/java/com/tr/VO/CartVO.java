package com.tr.VO;


public class CartVO {
	private int cId;
	private String userId;
	private String pNo;
	private int count;
	private String pImg;
	private String pName;
	private int pPrice;
	
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	@Override
	public String toString() {
		return "CartVO [cId=" + cId + ", userId=" + userId + ", pNo=" + pNo + ", count=" + count + ", pImg=" + pImg
				+ ", pName=" + pName + ", pPrice=" + pPrice + "]";
	}
	
	
	
	
	
	
}
