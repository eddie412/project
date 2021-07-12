package com.tr.VO;

import java.sql.Date;

import javax.xml.crypto.Data;

public class MemberVO {

	private String userId;
	private String userPass;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String userAddr;
	private Date userBday;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public Date getUserBday() {
		return userBday;
	}

	public void setUserBday(Date userBday) {
		this.userBday = userBday;
	}

	@Override
	public String toString() {
		return "MemberVO [userId=" + userId + ", userPass=" + userPass + ", userName=" + userName + ", userEmail="
				+ userEmail + ", userPhone=" + userPhone + ", userAddr=" + userAddr + ", userBday=" + userBday + "]";
	}

}
