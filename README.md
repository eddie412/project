# 전통이酒
전통이酒는 오프라인에서 접근이 어려운 전통주를 쉽게 접근 할 수 있도록 한 온라인 전통주 판매 쇼핑몰 입니다.    

## 프로젝트 선정 배경
 언택트 시대로 홈파티가 증가하면서 다양한 술에 관한 관심이 높아졌습니다. 
 또한 전통주 온라인 판매에 대한 법 개정으로 인해 온라인 쇼핑몰에서의 전통주 판매량이 기존의 3배이상으로 증가하였습니다.
 그로인해 오는 경제 효과와 동시에 전통주를 보다 널리 알리고 상용화 시키기 위해서 프로젝트 주제로 선정하였습니다.

## Description
* 개발기간 : 2021년 6월 29일 ~ 2021년 8월 3일
* 참여인원 : Backend 3명
* 각 담당 파트 
  + 김주영 : 초기 환경설정, 로그인, 회원가입, 관리자 페이지, UI
  + 장아름 : 주문 페이지,장바구니, 마이페이지, UI
  + 최예린 : 고객센터, 상세페이지, 검색, 카테고리, UI

## 사용기술
  + Spring 4.0, Apache Tomcat 8.5, BootStrap, Mybatis
  + Java, Ajax, Jquery, Git, MVC2 Pttern, CSS, HTML5, JSP
  + Oracle 11g DataBase
  
 
### DataBase
 ![데이터베일스](https://user-images.githubusercontent.com/86712618/128807180-29a5c38a-abd5-41f4-9eea-6dfc33be593d.PNG)


## 주요기능
+ 관리자
  + 상품 관리(등록, 조회, 수정, 삭제)
  + 주문 관리(조회, 수정, 삭제)
  + 회원 관리(조회, 수정, 삭제)
  + 문의사항 관리(조회, 삭제, 답변 등록)
+ 사용자
  + 회원가입 및 로그인
  + 카테고리별 상품 목록 & 상품 상세 화면 보기
  + 문의사항 등록, 수정, 삭제
  + 장바구니 담기 및 주문
  + 마이페이지(주문내역, 문의사항, 회원정보수정, 회원탈퇴, 로그아웃)

----------------------------
## 1. 상품 관리(관리자 기능)
+ 상품 등록  
  a. 상품번호, 상품명, 판매가, 수량, 상세설명, 이미지 정보를 입력해 상품등록 가능합니다.
+ 상품 조회  
  a. 관리자가 등록한 상품만 노출됩니다.  
  b. 사용자가 상품 구매 시 재고량 줄고, 판매량 증가됩니다.  
+ 상품 수정 및 삭제  
  a. 상품 수정 페이지로 이동후 수정 가능
  b. 상품 삭제 버튼 클릭시 상품삭제 가능
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129002280-47c1bb30-d82e-481a-b9e5-d000bf6367c3.mp4

## 2. 주문 관리(관리자 기능)   
+ 주문 조회  
  a. 사용자가 구매한 주문만 노출됩니다.  
  b. 주문 상태를 '배송중', '배송완료' 변경 가능합니다.   
+ 주문 수정 및 삭제  
  a. 주문 수정 페이지로 이동 후 수정 후 저장하여 수정 가능
  b. 주문 삭제 버튼 클릭시 주문 삭제 가능
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129008339-0b1d5ca6-6eba-47a7-b800-8b821a180ea7.mp4

## 3. 회원 관리(관리자 기능)  
+ 회원 조회  
  a. 사용자와 관리자 계정 모두 노출됩니다.  
+ 회원 수정 및 삭제  
  a. 아이디 제외하고 나머지 회원 정보를 수정 가능합니다.  
  b. 삭제 버튼 클릭시 회원 삭제 가능
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129008528-fb519644-dad5-48ca-8e25-7c6f79db16d5.mp4

## 4. 문의사항 관리(관리자 기능) 
+ 문의사항 조회 및 삭제   
  a. 사용자가 등록한 문의사항만 노출됩니다.  
  b. 삭제하면    
+ 답변 등록  
  a. 답변 등록,수정,삭제하면 사용자에게도 반영됩니다.  
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129008670-c26992cc-61d0-434d-9ec6-1bd416c55e49.mp4

## 5. 회원가입 및 로그인(사용자 기능)
+ 회원가입  
  a. 아이디 중복체크로 이미 회원가입한 아이디로는 가입 불가합니다.  
  b. 주류판매 사이트이므로, 생년월일 확인함으로써 미성년자는 가입 불가합니다.  
+ 로그인  
  a. 아이디 또는 비밀번호가 저장된 회원정보와 일치하지 않을 경우 로그인 불가합니다.  
  b. 관리자 계정으로 로그인 시, 상단바에 관리자 메뉴 노출됩니다.
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129009154-2a7d7661-1f7c-4573-a024-5f1a52b58435.mp4

## 6. 카테고리별 상품 목록 & 상품 상세 화면 보기(사용자 기능)
+ 카테고리별 상품 목록  
  a. 상단바 햄버거 메뉴 선택하면 카테고리 노출됩니다.  
  b. 카테고리 선택 시, 카테고리에 맞는 상품이 노출됩니다.  
+ 상품상세  
  a. 상품목록에서 임의의 상품 선택 시, 상품상세 페이지로 이동합니다.  
  b. +/- 버튼으로 장바구니에 담을 수량 변경 가능하며, 장바구니에 담기 버튼 선택하여 해당 상품 장바구니에 담기 가능합니다.  
  c. 장바구니에 동일한 상품이 존재하면 수량만 추가된 상태로 장바구니에 노출됩니다.
+ 검색  
  a. 상품명과 비교하여 검색한 키워드가 상품명에 존재하면 결과 노출됩니다. 
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129009471-23253793-e99a-45ef-ad44-334c1e116d13.mp4

## 7. 문의사항 등록, 수정, 삭제(사용자 기능)  
 
+ 문의사항 등록 및 조회  
  a. 상단바 햄버거 메뉴 > 고개센터 메뉴 선택하면 문의사항 등록 가능합니다.  
  b. 비밀번호가 일치해야 문의사항 조회 가능합니다.  
  c. 답변등록은 관리자만 가능합니다.  
+ 문의사항 수정 및 삭제  
  a. 비밀번호, 작성자 제외한 부분만 수정가능합니다.  
+ 문의사항 검색  
  a. 제목, 작성자, 내용 기준으로 비교하여 검색한 키워드가 존재하면 검색결과가 노출됩니다. 
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129009679-1ac430dd-dd27-4c1e-99ea-03567b0284bf.mp4

## 8. 장바구니 담기 및 주문서(사용자 기능)  
+ 장바구니  
  a. 사용자가 상품상세 페이지에서 담은 상품만 노출됩니다.  
  b. 상품은 개별삭제와 전체삭제 가능합니다.  
  c. 체크박스 선택한 상품만 주문서에 노출됩니다.  
     체크박스 미선택 시에는 주문서 페이지로 이동 불가합니다.  
+ 주문서  
  a. 장바구니에서 선택한 상품 정보, 주문자 정보, 배송지 정보, 결제 금액이 노출됩니다.  
  b. 배송지 정보 미입력 상태에서 결제 진행 불가합니다.  
  c. 사용자 정보 불러오기 버튼으로 로그인한 계정 정보 가져옵니다.  
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129009752-1fe956b6-4ab4-4195-b3d2-84d099a93e54.mp4

## 9. 마이페이지(사용자 기능)  
+ 주문내역  
  a. 로그인 한 계정이 구입한 주문내역만 노출됩니다.  
  b. 주문내역 목록 중 임의의 주문내역 선택 시, 주문상세내역 페이지로 이동됩니다.  
+ 문의사항  
  a. 로그인 한 계정이 등록한 문의사항만 노출됩니다.  
  b. 문의사항 목록 중 임의의 제목 선택 시, 문의사항상세 페이지로 이동됩니다.  
+ 회원정보수정  
  a. 아이디 제외한 나머지 회원정보 수정가능합니다.  
  b. 기존 비밀번호와 동일한 상태에서 수정 시, 회원정보 수정 불가합니다.  
+ 회원탈퇴  
  a. 입력한 비밀번호가 기존 비밀번호와 일치할때만 탈퇴 가능합니다.  
+ 로그아웃  
  a. 로그아웃 상태로 메인 페이지로 이동됩니다.
+ 😉구동영상
https://user-images.githubusercontent.com/84488362/129010161-05079bd7-4ab4-46b0-a72a-cbe536d1952a.mp4





