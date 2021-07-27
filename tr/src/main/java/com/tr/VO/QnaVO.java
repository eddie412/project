package com.tr.VO;

import java.util.Date;

public class QnaVO {
	private int qNo;
	private String qTitle;
	private String qWriter;
	private Date qDate;
	private String qContent;
	private int qPass;
	
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
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
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
	@Override
	public String toString() {
		return "QnaVO [qNo=" + qNo + ", qTitle=" + qTitle + ", qWriter=" + qWriter + ", qDate=" + qDate + ", qContent="
				+ qContent + ", qPass=" + qPass + "]";
	}
	
	
}
