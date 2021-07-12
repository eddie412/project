package com.tr.VO;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class OrderVO {
	private String oId; // 주문자 아이디
	private int oNo; // 주문번호
	//@DateTimeFormat(pattern = "yyyy.MM.dd")
	//@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date oDate; // 주문날짜
	private String oNon; // 상품번호
	private String oName; // 상품명
	private String oInfo; // 상품정보
	private int oPrice; // 상품가격
	private int oCount; // 상품수량
	private int oTotal; // 상품총금액
	

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

	public Date getoDate() {
		return oDate;
	}

	public void setoDate(Date oDate) {
		this.oDate = oDate;
	}

	public String getoNon() {
		return oNon;
	}

	public void setoNon(String oNon) {
		this.oNon = oNon;
	}

	public String getoName() {
		return oName;
	}

	public void setoName(String oName) {
		this.oName = oName;
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

	public int getoTotal() {
		return oTotal;
	}

	public void setoTotal(int oTotal) {
		this.oTotal = oTotal;
	}

	@Override
	public String toString() {
		return "OrderVO [oId=" + oId + ", oNo=" + oNo + ", oDate=" + oDate + ", oNon=" + oNon + ", oName=" + oName
				+ ", oInfo=" + oInfo + ", oPrice=" + oPrice + ", oCount=" + oCount + ", oTotal=" + oTotal + "]";
	}

}
