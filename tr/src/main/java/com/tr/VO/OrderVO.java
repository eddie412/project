package com.tr.VO;

import java.sql.Date;

public class OrderVO {
	private String oId; 		// 주문 번호
	private Date oDate; 		// 주문날짜
	private String userId; 		// 아이디
	private int count; 			// 상품수량
	private String pNo; 		// 상품번호
	private String delivery; 	//주문 처리
	private String rName;		 //주문자
	private String rAddr;		 //주문자 주소
	private String rPhone; 		//주문자 번호
	private String oMemo;		 // 상품명
	private int oTotal; 			// 상품총금액
	private String userName;
	private String pName;
	private String userPhone;
	
	
	public String getoId() {
		return oId;
	}
	public void setoId(String oId) {
		this.oId = oId;
	}
	public Date getoDate() {
		return oDate;
	}
	public void setoDate(Date oDate) {
		this.oDate = oDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
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
	public int getoTotal() {
		return oTotal;
	}
	public void setoTotal(int oTotal) {
		this.oTotal = oTotal;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	@Override
	public String toString() {
		return "OrderVO [oId=" + oId + ", oDate=" + oDate + ", userId=" + userId + ", count=" + count + ", pNo=" + pNo
				+ ", delivery=" + delivery + ", rName=" + rName + ", rAddr=" + rAddr + ", rPhone=" + rPhone + ", oMemo="
				+ oMemo + ", oTotal=" + oTotal + ", userName=" + userName + ", pName=" + pName + ", userPhone="
				+ userPhone + "]";
	}
	
	
	
}
