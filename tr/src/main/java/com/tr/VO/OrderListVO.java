package com.tr.VO;

import java.util.Date;

public class OrderListVO {
	private String oId;				//주문번호
	private String name;
	private String userId;			//로그인계정
	private String rName;			//보내는분 이름
	private String rAddr;			//보내는분 주소
	private String rPhone;			//보내는분 번호
	private String oMemo;			//요구사항
	private Date oDate;				//구매날짜
	private int oTotal;				//총 결제금액
	private String delivery;			//결제상태
	
	private int orderDetailsId;		//주문내역상세 번호
	private String pNo;				//상품번호
	private String pName;			//상품이름
	private String pImg;				//상품이미지
	private String pInfo;			//상품정보
	private int pPrice;				//상품가격
	private int count;				//상품당 구매수량
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
	public Date getoDate() {
		return oDate;
	}
	public void setoDate(Date oDate) {
		this.oDate = oDate;
	}
	public int getoTotal() {
		return oTotal;
	}
	public void setoTotal(int oTotal) {
		this.oTotal = oTotal;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public int getOrderDetailsId() {
		return orderDetailsId;
	}
	public void setOrderDetailsId(int orderDetailsId) {
		this.orderDetailsId = orderDetailsId;
	}
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
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	public String getpInfo() {
		return pInfo;
	}
	public void setpInfo(String pInfo) {
		this.pInfo = pInfo;
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
	
	@Override
	public String toString() {
		return "OrderListVO [oId=" + oId + ", name=" + name + ", userId=" + userId + ", rName=" + rName + ", rAddr="
				+ rAddr + ", rPhone=" + rPhone + ", oMemo=" + oMemo + ", oDate=" + oDate + ", oTotal=" + oTotal
				+ ", delivery=" + delivery + ", orderDetailsId=" + orderDetailsId + ", pNo=" + pNo + ", pName=" + pName
				+ ", pImg=" + pImg + ", pInfo=" + pInfo + ", pPrice=" + pPrice + ", count=" + count + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
