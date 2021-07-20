package com.tr.VO;

import java.util.Date;

public class OrderVO {
	private String oId; // 주문번호
	private Date oDate; // 주문날짜
	private String userId; //주문자
	private int count; // 상품수량
	private String name;
	private String addr; //주문자 주소
	private String phone; //주문자 번호
	private String pName; // 상품명
	private String delivery; //주문 처리
	private String rName; // 받는 사람 이름
	private String rAddr; // 받는 사람 주소
	private String rPhone; // 받는 사람 전화
	private String oMemo; // 요청사항
	private int oTotal; // 상품총금액
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
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "OrderVO [oId=" + oId + ", oDate=" + oDate + ", userId=" + userId + ", count=" + count + ", name=" + name
				+ ", addr=" + addr + ", phone=" + phone + ", pName=" + pName + ", delivery=" + delivery + ", rName="
				+ rName + ", rAddr=" + rAddr + ", rPhone=" + rPhone + ", oMemo=" + oMemo + ", oTotal=" + oTotal + "]";
	}
	
	
	
	
	
}
