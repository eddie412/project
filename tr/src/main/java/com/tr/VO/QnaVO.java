package com.tr.VO;

import java.util.Date;

public class QnaVO {
	
	private int qno;
	private String qtitle;
	private String qcontent;
	private String qwriter;
	private Date qdate;
	private int qpass;
//	---------------------------------
	private int rno;
	private String rcontent;
	private String rwriter;
	private Date rdate;

	
	@Override
	public String toString() {
		return "QnaVO [qno=" + qno + ", qtitle=" + qtitle + ", qcontent=" + qcontent + ", qwriter=" + qwriter
				+ ", qdate=" + qdate + ", rno=" + rno + ", rcontent=" + rcontent + ", rwriter=" + rwriter + ", rdate="
				+ rdate + "]";
	}
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRwriter() {
		return rwriter;
	}
	public void setRwriter(String rwriter) {
		this.rwriter = rwriter;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
//	------------------------------------------------
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	public String getTitle() {
		return qtitle;
	}
	public void setTitle(String title) {
		this.qtitle = title;
	}
	public String getContent() {
		return qcontent;
	}
	public void setContent(String content) {
		this.qcontent = content;
	}
	public String getWriter() {
		return qwriter;
	}
	public void setWriter(String writer) {
		this.qwriter = writer;
	}
	public Date getRegdate() {
		return qdate;
	}
	public void setRegdate(Date regdate) {
		this.qdate = regdate;
	}

	public int getQpass() {
		return qpass;
	}

	public void setQpass(int qpass) {
		this.qpass = qpass;
	}
	
}
