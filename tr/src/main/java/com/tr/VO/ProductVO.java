package com.tr.VO;

public class ProductVO {
	private String pNo;
	private String pName;
	private int pPrice;
	private int pCount;
	private String pInfo;
	private int pSales;
	private String pImg;
	
	
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
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
	public int getpCount() {
		return pCount;
	}
	public void setpCount(int pCount) {
		this.pCount = pCount;
	}
	public String getpInfo() {
		return pInfo;
	}
	public void setpInfo(String pInfo) {
		this.pInfo = pInfo;
	}
	public int getpSales() {
		return pSales;
	}
	public void setpSales(int pSales) {
		this.pSales = pSales;
	}
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	@Override
	public String toString() {
		return "ProductVO [pNo=" + pNo + ", pName=" + pName + ", pPrice=" + pPrice + ", pCount=" + pCount + ", pInfo="
				+ pInfo + ", pSales=" + pSales + ", pImg=" + pImg + "]";
	}
	
	
	
	
	
}
