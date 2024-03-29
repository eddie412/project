-------------------- 멤버 테이블 ------------------------
create table tr_member(
  userId varchar2(15)  not null primary key,    -- 아이디
  userPass varchar2(100) not null,				-- 비밀번호
  userName varchar2(12) not null,				-- 이름
  userEmail varchar2(100),						-- 이메일
  userPhone varchar2(11) not null,				-- 전화번호
  userAddr varchar2(300) not null,				-- 주소
  userBday Date not null,						-- 생일
  verify Number not null						-- 관리자 구분(1: 사용자)
);

drop table tr_member cascade Constraints;

delete from tr_member where userName='aa';

select * from tr_member;

insert into tr_member(userId,userPass,userName,userEmail,userPhone,userAddr,userBday,verify)
values ('admin',1234,'김주영','juyoung412@gmail.com','01085146744','상계동','93/04/12',9);

insert into tr_member(userId,userPass,userName,userEmail,userPhone,userAddr,userBday,verify)
values ('jk',1234,'김주영','juyoung412@gmail.com','01085146744','상계동','93/04/12',9);

-------------------- 주문 테이블 ------------------------
create table tr_order(		
  oId varchar2(15) primary key,				-- 주문번호
  oDate date default sysdate,				-- 주문날짜
  userId varchar2(15),						-- 아이디
  count number(2),							-- 주문 수량
  pNo varchar2(30),							-- 상품번호
  delivery varchar2(20) default '배송준비',	-- 주문상태
  rName varchar2(12),						-- 받는분 이름
  rAddr varchar2(300),						-- 받는분 주소
  rPhone varchar2(11),						-- 받는분 연락처
  oMemo varchar2(100),						-- 요구사항
  oTotal number								-- 총 금액
);

create sequence sq_order
increment by 1
start with 1
maxvalue 1000
nocache;

alter table tr_order ADD CONSTRAINT tr_order_userId FOREIGN KEY(userId) REFERENCES tr_member(userId);

drop table tr_order CASCADE CONSTRAINTS
drop sequence sq_order;
drop table tr_order;

insert into tr_order(oId,userId,count,pNo,rName,rAddr,rPhone,oMemo,oTotal)
values (sq_order.nextval,'aaa',1,'m1','주영','상계동',010,'배송',200);

select * from tr_order;

-------------------- 주문상세 테이블 ------------------------
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

drop table tr_orderDetails;
drop sequence sq_oDetails;

select * from tr_orderDetails;

-------------------- 장바구니 테이블 ------------------------
create table tr_cart(
cId number primary key,				-- 카트번호
userId varchar2(15) not null,		-- 아이디
pNo varchar2(10) not null,			-- 상품번호
count number						-- 주문 수량
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

insert into tr_cart(cId,userId,pNo,count) values (sq_cart.nextval,'aa','m14',1);

INSERT INTO tr_cart VALUES(sq_cart.NEXTVAL, 'aaa', 'W001', 5);
INSERT INTO tr_cart VALUES(sq_cart.NEXTVAL, 'aaa', 'M001', 2);

----------------------상품 테이블--------------------------------
create table tr_product(
	pNo varchar2(10) not null primary key,   	--상품번호
	pName varchar2(100) not null,				--상품명
	pPrice number(10) not null,					--판매가
	pCount number(10) default 0,				--재고
	pInfo varchar2(1000),						--상품정보
	pSales number(3) default 0,					--판매량
	pImg varchar2(500),							--상품 이미지
	pThumbImg varchar(200)						--섬네일
);

alter table tr_product add(pThumbImg varchar(200));
drop table tr_product;
drop table tr_product CASCADE CONSTRAINTS;
select * from tr_product;

drop sequence sq_y;
drop sequence sq_s;
drop sequence sq_m;
drop sequence sq_f;
drop sequence sq_n;

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

create sequence sq_y		--시퀀스 for 약주
increment by 1
start with 1
maxvalue 1000
nocache;

create sequence sq_f		--시퀀스 for 과실주
increment by 1
start with 1
maxvalue 1000
nocache;

create sequence sq_n		--시퀀스 for 안주
increment by 1
start with 1
maxvalue 1000
nocache;

insert into tr_product(pNO,pNAME,pPrice,pCount,pInfo,pSales)
values ('m'||sq_product.nextval,'와인',1000,2,'요구루트',3);

insert into tr_product(pNO,pNAME,pPrice,pCount,pInfo,pSales)
values ('m1','막걸리',1000,2,'요구루트',3);

INSERT INTO tr_product VALUES('M001', '장수막걸리', 2500, 10, '백미를 사용해 장기저온숙성 방식으로 만들어져 영양이 풍부하고 자연발효에 의한 탄산과 어울려 감칠맛과 청량감이 일품인 막걸리', 0, 'M_jangsu.jpg','M_jangsu.jpg');
INSERT INTO tr_product VALUES('W001', '세븐 폴스, 카베르네 소비뇽', 19000, 10, '진한 과일 풍미에 묵직한 바디감이 느껴지는 레드와인', 5, 'W_Seven Falls.jpg','W_Seven Falls.jpg');

--------------------------문의사항 테이블--------------------------
create table tr_qna(
	qNo number(10) not null primary key,		-- 문의사항 번호
	qTitle varchar2(100) not null ,				-- 제목
	qWriter varchar2(100) ,						--작성자
	qDate date default sysdate,					-- 작성날짜
	qContent varchar2(1000) not null, 			-- 내용
	qPass number(12)							-- 비밀번호
);

create sequence sq_qna
increment by 1
start with 1
maxvalue 1000
nocache;

insert into tr_qna(qNO,qTitle,qWriter,qContent,qPass)
values (sq_qna.nextval,'문의사항입니다','aaa','이거이상해요',1234);

insert into tr_qna(qNO,qTitle,qWriter,qContent)
values (sq_qna.nextval,'문의사항입니다','aaa','이거이상해요');

select * from tr_qna;

drop table tr_qna;
drop sequence sq_qna

-------------------답글 테이블---------------------
create table tr_reply( 
	qNo number not null,						-- 문의사항 번호
	rNo number not null,						-- 답글 번호
	rContent varchar2(1000) not null,			-- 답글 내용				
	rWriter varchar2(10) default '관리자',		-- 답글 작성자
	rDate date default sysdate not null			-- 답글 작성날짜
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

drop sequence sq_reply;
drop sequence sq_order;

insert into tr_qna(qNo, qTitle, qWriter, qContent, qPass)
values(sq_qna.nextval, 'test', 'tester', '안녕', 1234);

delete from tr_qna
where qNo = 2;


-------------------카테고리 테이블---------------------
create table tr_category( 
	cateName varchar2(20) not null,				-- 카테고리 이름
	cateCode varchar2(10) not null primary key	-- 카테고리 코드
);
insert into tr_category values('소주','s');
insert into tr_category values('막걸리','m');
insert into tr_category values('약주','y');
insert into tr_category values('과실주','f');
insert into tr_category values('안주','n');

drop table tr_category;
-------------------상품평 테이블---------------------
create table tr_comment(
	pNo varchar2(10),				-- 상품 번호
	cNo number(3) not null,			-- 상품평 번호
	cContent varchar2(1000),		-- 상품평 내용
	cDate DATE DEFAULT sysdate,		-- 상품평 작성 날짜
	userId varchar2(15)  not null	-- 사용자 아이디
);
alter table tr_comment ADD CONSTRAINT tr_comment_pNo FOREIGN KEY(pNo) REFERENCES tr_product(pNo);
alter table tr_comment ADD CONSTRAINT tr_comment_userId FOREIGN KEY(userId) REFERENCES tr_member(userId);

create sequence sq_comment		
increment by 1
start with 1
maxvalue 1000
nocache;

drop sequence sq_comment;
drop sequence sq_qna;
select * from TR_COMMENT;

		 select 
		 	pNo, cNo, cContent, cDate, userId
		  from tr_comment 
		  where pNo = 'm1';