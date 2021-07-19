package com.tr.VO;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class OrderVO {
	private String oId;				//주문번호
	private String userId;			//사용자 아이디
	private String rName;			//보내는분 이름
	private String rAddr;			//보내는분 주소
	private String rPhone;			//보내는분 번호
	private String oMemo;			//요구사항
	private Date oDate;				//구매날짜
	private int oTotal;				//총 결제금액
	private String oState;			//결제상태
	
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
	public String getoState() {
		return oState;
	}
	public void setoState(String oState) {
		this.oState = oState;
	}
	
	
	@Override
	public String toString() {
		return "OrderVO [oId=" + oId + ", userId=" + userId + ", rName=" + rName + ", rAddr=" + rAddr + ", rphone="
				+ rPhone + ", oMemo=" + oMemo + ", oDate=" + oDate + ", oTotal=" + oTotal + ", oState=" + oState + "]";
	}
	
	
}
