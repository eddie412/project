package com.tr.vo;

public class OrderVO {
	private String oId;
	private int	oNo;
	
	private String oNon;  //상품번호
	private String oInfo;
	private int oPrice;
	private int oCount;
	
	public String getoId() {
		return oId;
	}
	public void setoId(String oId) {
		this.oId = oId;
	}
	public int getoNo() {
		return oNo;
	}
	public void setoNo(int oNo) {
		this.oNo = oNo;
	}
	public String getoNon() {
		return oNon;
	}
	public void setoNon(String oNon) {
		this.oNon = oNon;
	}
	public String getoInfo() {
		return oInfo;
	}
	public void setoInfo(String oInfo) {
		this.oInfo = oInfo;
	}
	public int getoPrice() {
		return oPrice;
	}
	public void setoPrice(int oPrice) {
		this.oPrice = oPrice;
	}
	public int getoCount() {
		return oCount;
	}
	public void setoCount(int oCount) {
		this.oCount = oCount;
	}
	
	
	
	}
