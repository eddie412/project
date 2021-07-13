package com.tr.VO;

public class CartVO {
	private int cId;					//장바구니 번호
	private String userId;			//사용자 아이디
	private String userName; 		// 사용자이름
	private String pNo;				//상품번호
	private String pImg;				//상품이미지
	private String pName;			//상품이름
	private int pPrice;				//상품 가격
	private int count;				//구매 수량
	
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
	
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
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
		return "CartVO [cId=" + cId + ", userId=" + userId + ", userName=" + userName + ", pNo=" + pNo + ", pImg="
				+ pImg + ", pName=" + pName + ", pPrice=" + pPrice + ", count=" + count + "]";
	}
	
}
