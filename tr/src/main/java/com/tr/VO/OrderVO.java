package com.tr.VO;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class OrderVO {
	private int cId;					//장바구니 번호
	private String oId;				//주문번호
	private String userId;			//사용자 아이디
	private String userName; 		// 사용자이름
	private String rName;			//보내는분 이름
	private String rAddr;			//보내는분 주소
	private String rPhone;			//보내는분 번호
	private String oMemo;			//요구사항
	private String pNo;				//상품번호
	private String pImg;				//상품이미지
	private String pName;			//상품이름
	private int pPrice;				//상품 가격
	private int count;				//구매 수량
	private int oTotal;				//총 결제금액
	private Date oDate;				//구매날짜
	private String oState;			//결제상태
	
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getoId() {
		return oId;
	}
	public void setoId(String oId) {
		this.oId = oId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getrAddr() {
		return rAddr;
	}
	public void setrAddr(String rAddr) {
		this.rAddr = rAddr;
	}
	public String getrPhone() {
		return rPhone;
	}
	public void setrPhone(String rPhone) {
		this.rPhone = rPhone;
	}
	public String getoMemo() {
		return oMemo;
	}
	public void setoMemo(String oMemo) {
		this.oMemo = oMemo;
	}
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
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
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getoTotal() {
		return oTotal;
	}
	public void setoTotal(int oTotal) {
		this.oTotal = oTotal;
	}
	public Date getoDate() {
		return oDate;
	}
	public void setoDate(Date oDate) {
		this.oDate = oDate;
	}
	public String getoState() {
		return oState;
	}
	public void setoState(String oState) {
		this.oState = oState;
	}
	
	
	@Override
	public String toString() {
		return "OrderVO [cId=" + cId + ", oId=" + oId + ", userId=" + userId + ", userName=" + userName + ", rName="
				+ rName + ", rAddr=" + rAddr + ", rPhone=" + rPhone + ", oMemo=" + oMemo + ", pNo=" + pNo + ", pImg="
				+ pImg + ", pName=" + pName + ", pPrice=" + pPrice + ", count=" + count + ", oTotal=" + oTotal
				+ ", oDate=" + oDate + ", oState=" + oState + "]";
	}
	

	
}
