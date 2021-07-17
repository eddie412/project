package com.tr.VO;

import java.util.Date;

public class BoardVO {
	
	private int qno;
	private String qtitle;
	private String qcontent;
	private String qwriter;
	private Date qdate;
	private int root;
	private int step;
	private int indent;
	
	
	public int getRoot() {
		return root;
	}
	public void setRoot(int root) {
		this.root = root;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getIndent() {
		return indent;
	}
	public void setIndent(int indent) {
		this.indent = indent;
	}
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
	
}
