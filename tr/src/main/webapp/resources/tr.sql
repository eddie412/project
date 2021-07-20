create table tr_member(
  userId varchar2(15)  not null primary key,
  userPass varchar2(100) not null,
  userName varchar2(12) not null,
  userEmail varchar2(100),
  userPhone varchar2(11) not null,
  userAddr varchar2(300) not null,
  userBday Date not null,
  verify Number not null
);

drop table tr_member;

delete from tr_member where userName='aa';
-----------------------주문------------------
create table tr_order(		
  oId varchar2(15) primary key,			--주문번호
  oDate date default sysdate,			--주문날짜
  userId varchar2(15),					--주문자 아이디
  count number(2),		
  name varchar2(10),					--주문자 이름				
  addr varchar2(300),					--주문자 주소
  phone varchar2(11),					--주문자 전화번호
  pName varchar2(30),					--상품이름
  delivery varchar2(20) default '배송준비',
  rName varchar2(12),
  rAddr varchar2(300),
  rPhone varchar2(11),
  oMemo varchar2(100),
  oTotal number
);

alter table tr_order ADD CONSTRAINT tr_order_userId FOREIGN KEY(userId) REFERENCES tr_member(userId);

alter table tr_order drop foreign key tr_order_userId;

alter table tr_order modify(userId varchar2(15));

drop table tr_order;
drop table tr_order CASCADE CONSTRAINTS

create sequence sq_order
increment by 1
start with 1
maxvalue 1000
nocache;

drop sequence sq_order;

insert into tr_order(oId,NAME,ADDR,PHONE, pNAME,Count)
values (sq_order.nextval,'aaa','상계동',010,'요구루트',2);

select * from tr_order;
---------------주문 상세---------------------
create table tr_orderDetails(
	oNo number primary Key,
	oId varchar2(15),
	pNo varchar2(10),
	count number
);

create sequence sq_oDetails
increment by 1
start with 1
maxvalue 1000
nocache;

alter table tr_orderDetails ADD CONSTRAINT tr_orderDetials_oId FOREIGN KEY(oId) REFERENCES tr_order(oId);
-----------------장바구니 --------------------
create table tr_cart(
cId number primary key,		--카트번호
userId varchar2(15) not null,
pNo varchar2(10) not null,
count number
);

alter table tr_cart ADD FOREIGN key(userId) REFERENCES tr_member(userId);
alter table tr_cart ADD FOREIGN key(pNo) REFERENCES tr_product(pNo);

create sequence sq_cart		--시퀀스 for cart
increment by 1
start with 1
maxvalue 1000
nocache;

select * from TR_CART;
drop table tr_cart;

insert into tr_cart(cId,userId,pNo,count) values (sq_cart.nextval,'aa','m1',1);
------------------------------------------------------------------------
----------------------상품--------------------------------
create table tr_product(
	pNo varchar2(10) not null primary key,   --상품번호
	pName varchar2(30) not null,			--상품명
	pPrice number(10) not null,				--판매가
	pCount number(10) default 0,			--재고
	pInfo varchar2(1000),			--상품정보
	pSales number(3) default 0,				--판매량
	pImg varchar2(500)					--상품 이미지
);

drop table tr_product;
select * from tr_product;

create sequence sq_m		--시퀀스 for 막걸리
increment by 1
start with 1
maxvalue 1000
nocache;

create sequence sq_s		--시퀀스 for 소주
increment by 1
start with 1
maxvalue 1000
nocache;

create sequence sq_b		--시퀀스 for 맥주
increment by 1
start with 1
maxvalue 1000
nocache;

insert into tr_product(pNO,pNAME,pPrice,pCount,pInfo,pSales)
values ('m'||sq_product.nextval,'막걸리',1000,2,'요구루트',3);

insert into tr_product(pNO,pNAME,pPrice,pCount,pInfo,pSales)
values ('m1','막걸리',1000,2,'요구루트',3);
-----------------------------------------------------------------
create table tr_qna(
	qNo number(10) not null primary key,
	qTitle varchar2(100) not null ,
	qWriter varchar2(100) not null ,			--작성자
	qDate date default sysdate,
	qContent varchar2(1000) not null, 
	qPass number(12)
);

create sequence sq_qna
increment by 1
start with 1
maxvalue 1000
nocache;

insert into tr_qna(qNO,qTitle,qWriter,qContent,qPass)
values (sq_qna.nextval,'문의사항입니다','주영','이거이상해요',1234);

alter table tr_qna modify qWriter varchar2(10);

create table tr_reply( 
	qNo number not null,
	rNo number not null,
	rContent varchar2(1000) not null,
	rWriter varchar2(10) default '관리자',
	rDate date default sysdate not null	
);

drop table tr_reply;

alter table tr_order
ADD Foreign Key(Id) REFERENCES tr_member(Id);

alter table tr_cart
ADD Foreign Key(cId) REFERENCES tr_member(mId);

alter table tr_cart
ADD Foreign Key(cNo) REFERENCES tr_pro(pNo);

alter table tr_reply 
ADD Foreign Key(qNo) REFERENCES tr_qna(qNo);

insert into tr_reply(qNo, rNo, rContent)
values(1, sq_reply.nextval, 'test');

select * from TR_reply;

create sequence sq_reply
increment by 1
start with 1
maxvalue 1000
nocache;

create sequence sq_order
increment by 1
start with 1
maxvalue 1000
nocache;

drop sequence sq_qna;

insert into tr_qna(qNo, qTitle, qWriter, qContent, qPass)
values(sq_qna.nextval, 'test', 'tester', '안녕', 1234);

delete from tr_qna
where qNo = 2;



