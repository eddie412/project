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

create table tr_order(
  id varchar2(10),
  no number(10) primary key,
  oDate date default sysdate,
  non varchar2(30),					--상품번호
  name varchar2(100),
  info varchar2(1000) ,
  price number(10),
  count number(2),
  total number(2),
  addr varchar2(300),
  phone varchar2(11),
  pName varchar2(30),
  image varchar2(10),
  delivery varchar2(20) default '배송준비'
);

drop table tr_order;

alter

create sequence sq_order
increment by 1
start with 1
maxvalue 1000
nocache;

insert into tr_order(NO,NAME,ADDR,PHONE, pNAME,Count)
values (sq_order.nextval,'aaa','상계동',010,'요구루트',2);

select * from tr_order;

create table tr_cart(
  cId varchar2(10) not null,
  cNo varchar2(30) not null,
  cInfo varchar2(1000) not null ,
  cPrice number(10) not null,
  cCount number(2) not null,
  cTotal number(10) not null 
);

create table tr_product(
	pNo varchar2(10) not null primary key,   --상품번호
	pName varchar2(30) not null,			--상품명
	pPrice number(10) not null,				--판매가
	pCount number(10) default 0,			--재고
	pInfo varchar2(1000),			--상품정보
	pSales number(3) default 0				--판매량
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



