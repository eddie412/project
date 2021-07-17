create table tr_member(
	
  mId varchar2(15)  not null primary key,
  mPass varchar2(12) not null,
  mName varchar2(12) not null,
  mEmail varchar2(100),
  mPhone number(11) not null,
  mAddr varchar2(300) not null,
  mBday number(8) not null
);

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

drop table;

alter table tr_pro modify pName varchar2(50);
insert into tr_pro(pno,pName,pPrice,pCount,pInfo) values ('S01','고운달 오크 200ml',180000,3,'문경오미자로 빚은 지역특산물 52도');

create table tr_category(
    cateName    varchar2(20) not null,
    cateCode    varchar2(30) not null,
    cateCodeRef varchar2(30) null,
    primary key(cateCode),
    foreign key(cateCodeRef) references tr_category(cateCode)
    );
    insert into tr_category(cateName, cateCode) values('소주','S');
    insert into tr_category(cateName, cateCode) values('막걸리','M');
    insert into tr_category(cateName, cateCode) values('약주','Y');
    insert into tr_category(cateName, cateCode) values('과실주','F');
    insert into tr_category(cateName, cateCode) values('안주','N');
    
