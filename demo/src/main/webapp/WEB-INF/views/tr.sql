create table tr_member(
	
  userId varchar2(15)  not null primary key,
  userPass varchar2(100) not null,
  userName varchar2(12) not null,
  userEmail varchar2(100),
  userPhone varchar2(11) not null,
  userAddr varchar2(300) not null,
  userBday Date not null
);

drop table tr_member;

delete from tr_member where userName='aa';

create table tr_order(
  oId varchar2(10) not null,
  oNo number(10)  not null primary key,
  oDate date default sysdate,
  oNon varchar2(30) not null,					--상품번호
  oInfo varchar2(1000) not null,
  oPrice number(10) not null,
  oCount number(2) not null
);

create table tr_cart(
  cId varchar2(10) not null,
  cNo varchar2(30) not null,
  cInfo varchar2(1000) not null ,
  cPrice number(10) not null,
  cCount number(2) not null,
  cTotal number(10) not null 
);

create table tr_pro(
	pNo varchar2(10) not null primary key,
	pName varchar2(10) not null,
	pPrice number(10) not null,
	pCount number(10) default 0,
	pInfo varchar2(1000) not null ,
	pSales number(3) default 0
);

create table tr_qna(
	qNo number(10) not null primary key,
	qTitle varchar2(20) not null ,
	qWriter varchar2(10) not null ,			--작성자
	qDate date default sysdate,
	qContent varchar2(1000) not null, 
	qPass number(12)
);

alter table tr_qna modify qWriter varchar2(10);

create table tr_reply( 
	qNo number(10) not null,
	rNo number(3) not null,
	rContent varchar2(1000) not null,
	rDate date default sysdate not null,
	rWriter varchar2(10) not null
);

alter Table tr_order
ADD Foreign Key(oId) REFERENCES tr_member(mId);

alter Table tr_cart
ADD Foreign Key(cId) REFERENCES tr_member(mId);

alter Table tr_cart
ADD Foreign Key(cNo) REFERENCES tr_pro(pNo);

alter Table tr_reply
ADD Foreign Key(qNo) REFERENCES tr_qna(qNo);


create sequence sq_qna
increment by 1
start with 1
maxvalue 1000
nocache;

drop sequence sq_qna;

insert into tr_qna(qNo, qTitle, qWriter, qContent, qPass)
values(sq_qna.nextval, 'test', 'tester', '안녕', 1234);

delete from tr_qna
where qNo = 2;

select * from TR_QNA;

create sequence sq_reply
increment by 1
start with 1
maxvalue 1000
nocache;