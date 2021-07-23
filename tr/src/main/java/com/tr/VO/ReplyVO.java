package com.tr.VO;

import java.util.Date;

public class ReplyVO {
	private String pNO;
	private int cNO;
	private String cContent;
	private Date cDate;
	private String userId;
	
	public String getpNO() {
		return pNO;
	}
	public void setpNO(String pNO) {
		this.pNO = pNO;
	}
	public int getcNO() {
		return cNO;
	}
	public void setcNO(int cNO) {
		this.cNO = cNO;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "ReplyVO [pNO=" + pNO + ", cNO=" + cNO + ", cContent=" + cContent + ", cDate=" + cDate + ", userId="
				+ userId + "]";
	}
	

	

}
