package com.tr.VO;

import java.sql.Date;

public class OrderVO {
	private String id; // 주문자 아이디
	private int no; // 주문번호
	private String name; //주문자
	private String addr; //주문자 주소
	private String phone; //주문자 번호
	private Date oDate; // 주문날짜
	private String non; // 상품번호
	private String pName; // 상품명
	private String info; // 상품정보
	private int price; // 상품가격
	private int count; // 상품수량
	private int total; // 상품총금액
	private String delivery; //주문 처리
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Date getoDate() {
		return oDate;
	}
	public void setoDate(Date oDate) {
		this.oDate = oDate;
	}
	public String getNon() {
		return non;
	}
	public void setNon(String non) {
		this.non = non;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getdelivery() {
		return delivery;
	}
	public void setdelivery(String delivery) {
		this.delivery = delivery;
	}
	@Override
	public String toString() {
		return "OrderVO [id=" + id + ", no=" + no + ", name=" + name + ", addr=" + addr + ", phone=" + phone
				+ ", oDate=" + oDate + ", non=" + non + ", pName=" + pName + ", info=" + info + ", price=" + price
				+ ", count=" + count + ", total=" + total + ", delivery=" + delivery + "]";
	}
	

	
	
	
}
