package com.tr.VO;


public class ProductVO {
	private String pNO;
	private String pName;
	private String pImg;
	private int pPrice;
	private int pCount;
	private String pInfo;
	private int pSales;
	
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	public String getpNO() {
		return pNO;
	}
	public void setpNO(String pNO) {
		
		this.pNO = pNO;
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
	
//	---------------------------------------------카테고리
	
	private String cateName;
	private String cateCode;

	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	
	
}
