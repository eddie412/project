package com.tr.VO;

import java.util.Date;

public class QnaVO {
	private int qNo;
	private String qTitle;
	private String qWriter;
	private Date qDate;
	private String qContent;
	private int qPass;

	private int rNO;
	private String rContent;
	private String rWriter;
	private Date rDate;
	
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqWriter() {
		return qWriter;
	}
	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public int getqPass() {
		return qPass;
	}
	public void setqPass(int qPass) {
		this.qPass = qPass;
	}
	public int getrNO() {
		return rNO;
	}
	public void setrNO(int rNO) {
		this.rNO = rNO;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getrWriter() {
		return rWriter;
	}
	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	
	@Override
	public String toString() {
		return "QnaVO [qNo=" + qNo + ", qTitle=" + qTitle + ", qWriter=" + qWriter + ", qDate=" + qDate + ", qContent="
				+ qContent + ", qPass=" + qPass + ", rNO=" + rNO + ", rContent=" + rContent + ", rWriter=" + rWriter
				+ ", rDate=" + rDate + "]";
	}
	
	
}
