------------------- 멤버 테이블 ------------------------
create table tr_member(
  userId 			varchar2(15)  		not null 	primary key,  	-- 아이디
  userPass 		varchar2(100) 		not null,							-- 비밀번호
  userName 		varchar2(12) 		not null,							-- 이름
  userEmail 		varchar2(100),											-- 이메일
  userPhone 	varchar2(11) 		not null,							-- 전화번호
  userAddr 		varchar2(300) 		not null,							-- 주소
  userBday 		Date 					not null,							-- 생일
  verify 			Number 				not null							-- 관리자 구분(1: 사용자)
);


drop table tr_member;
drop table tr_member CASCADE CONSTRAINTS;

SELECT * FROM tr_member;


-------------------- 주문 테이블 ------------------------
create table tr_order(		
  oId 			varchar2(15) 		PRIMARY KEY,						-- 주문번호
  oDate 		DATE 				DEFAULT sysdate,					-- 주문날짜
  userId 		varchar2(15),													-- 아이디
  count 		number(2),														-- 주문 수량
  pNo 		varchar2(30),													-- 상품번호
  delivery 	varchar2(20) 		DEFAULT '배송준비',					-- 주문상태
  rName 		varchar2(12),													-- 받는분 이름
  rAddr 		varchar2(300),													-- 받는분 주소
  rPhone 	varchar2(11),													-- 받는분 연락처
  oMemo 	varchar2(100),													-- 요구사항
  oTotal 		number															-- 총 금액
);

alter table tr_order ADD CONSTRAINT tr_order_userId FOREIGN KEY(userId) REFERENCES tr_member(userId);




drop table tr_order;
drop table tr_order CASCADE CONSTRAINTS;

select * from tr_order;


-------------------- 주문상세 테이블 ------------------------
create table tr_orderDetails(
    oNo		 number 			not null 		primary key,				-- 주문디테일 번호
    oId         varchar2(15) 		not null,										-- 주문번호
    pNo        varchar2(10) 		not null, 										-- 상품번호
    count      number 			not null											-- 주문 수량
);

alter table tr_orderDetails ADD CONSTRAINT tr_orderDetials_oId FOREIGN KEY(oId) REFERENCES tr_order(oId);

create sequence sq_orderDetails
increment by 1
start with 1
maxvalue 1000
nocache;

select * from tr_orderDetails;

drop table tr_orderDetails;

-------------------- 장바구니 테이블 ------------------------
create table tr_cart(
	cId 			number 								primary key,			-- 카트번호
	userId 		varchar2(15)		not null,								-- 아이디
	pNo 			varchar2(10) 		not null,								-- 상품번호
	count 		number															-- 주문 수량
);


alter table tr_cart ADD FOREIGN key(userId) REFERENCES tr_member(userId);
alter Table tr_cart ADD Foreign Key(pNo) REFERENCES tr_product(pNo);

select * from TR_CART;
drop table tr_cart;



----------------------상품 테이블--------------------------------
create table tr_product(
	pNo 			varchar2(10) 			not null 	PRIMARY KEY,   	--상품번호
	pName 		varchar2(100) 		not null,							--상품명
	pPrice 		number(10) 			not null,							--판매가
	pCount 		number(10) 							DEFAULT 0,		--재고
	pInfo 			varchar2(1000),												--상품정보
	pSales 		number(3) 								DEFAULT 0,		--판매량
	pImg 			varchar2(500)													--상품 이미지
);

select * from tr_product;


drop table tr_product;


--------------------------문의사항 테이블--------------------------
create table tr_qna(
	qNo 			number(10) 		not null 	PRIMARY KEY,		-- 문의사항 번호
	qTitle 		varchar2(100) 	not null ,							-- 제목
	qWriter 		varchar2(100)		not null ,							--작성자
	qDate 		DATE 								DEFAULT sysdate,	-- 작성날짜
	qContent 	varchar2(1000) 	not null, 							-- 내용
	qPass 		number(12)													-- 비밀번호
);

create sequence sq_qna
increment by 1
start with 1
maxvalue 1000
nocache;

drop sequence sq_qna;

drop table tr_qna;

select * from tr_qna;

-------------------답글 테이블---------------------
create table tr_reply( 
	qNo 			number 				not null,										-- 문의사항 번호
	rNo 			number 				not null,										-- 답글 번호
	rContent	varchar2(1000) 		not null,										-- 답글 내용				
	rWriter 		varchar2(10) 								DEFAULT '관리자',		-- 답글 작성자
	rDate 		DATE 					not null		DEFAULT sysdate 		-- 답글 작성날짜
);


		SELECT		r.rNo, r.rContent
		FROM		tr_qna q, tr_reply r
		WHERE		r.qNO = 2
		AND			qWriter = 'test';

create sequence sq_reply
increment by 1
start with 1
maxvalue 1000	
nocache;


alter table tr_reply 
ADD Foreign Key(qNo) REFERENCES tr_qna(qNo);

drop table tr_reply;

select * from tr_reply;
-------------------카테고리 테이블---------------------
create table tr_category( 
	cateCode 		varchar2(10) 	not null 	primary key,	-- 카테고리 코드
	cateName 		varchar2(20) 	not null						-- 카테고리 이름
);


-------------------상품평 테이블---------------------
create table tr_comment(
	pNo 			varchar2(10),														-- 상품 번호
	cNo 			number(3) 			not null,									-- 상품평 번호
	cContent	varchar2(1000),													-- 상품평 내용
	cDate 		DATE 								DEFAULT sysdate,		-- 상품평 작성 날짜
	userId 		varchar2(15) 		 not null									-- 사용자 아이디
);

alter table tr_comment ADD CONSTRAINT tr_comment_pNo FOREIGN KEY(pNo) REFERENCES tr_product(pNo);
alter table tr_comment ADD CONSTRAINT tr_comment_userId FOREIGN KEY(userId) REFERENCES tr_member(userId);












--------------------데이터
INSERT INTO tr_member VALUES('test', '1234', '테스트', 'test@example.com', '01011112222', '서울시 행복구 도도동', '00/01/01', 1);
INSERT INTO tr_member VALUES('apple', 'pass01', '사과', 'apple@example.com', '01011112322', '서울시 행복구 도도동', '97/12/24');
INSERT INTO tr_member VALUES('rain_row', 'rain01@', '비주륵', 'rain@naver.com','01021549865', '경기도 사랑동 가족동 128', '98/04/12');
INSERT INTO tr_member VALUES('aaa', 'aaa', '비주륵', 'rain@naver.com','01021549865', '경기도 사랑동 가족동 128', '98/04/12');


INSERT INTO tr_product VALUES('M001', '장수막걸리', 2500, 10, '백미를 사용해 장기저온숙성 방식으로 만들어져 영양이 풍부하고 자연발효에 의한 탄산과 어울려 감칠맛과 청량감이 일품인 막걸리', 0, 'M_jangsu.jpg');
INSERT INTO tr_product VALUES('W001', '세븐 폴스, 카베르네 소비뇽', 19000, 10, '진한 과일 풍미에 묵직한 바디감이 느껴지는 레드와인', 5, 'W_Seven Falls.jpg');

INSERT INTO tr_cart VALUES(sq_cart.NEXTVAL, 'test', 'W001', 5);
INSERT INTO tr_cart VALUES(sq_cart.NEXTVAL, 'test', 'M001', 1);

INSERT INTO tr_cart(cId, userId, pNo, cPrice, cCount) VALUES(1, 'test', 'C012', 2500, 5);

INSERT INTO tr_qna(qNo, qTitle, qWriter, qDate, qContent, qPass) VALUES(sq_qna.NEXTVAL, '상품 가격 오르나요?', 'test', sysdate, '다음달부터 상품 가격이 오른다고 공지가 있던데 얼마정도 오를까요?', 1234);
INSERT INTO tr_qna(qNo, qTitle, qWriter, qDate, qContent, qPass) VALUES(sq_qna.NEXTVAL, '반품시키고싶습니다.', 'test', sysdate, '상품 포장상태가 별로네요. 찝찝해서 반품합니다.', 1234);
INSERT INTO tr_qna(qNo, qTitle, qWriter, qDate, qContent, qPass) VALUES(sq_qna.NEXTVAL, '유통기한 문의', 'test', sysdate, '유통기한은 언제까지인지 안써져있네요. 궁금하네요.', 1234);

INSERT INTO tr_reply(qNo, rNo, rContent, rWriter, rDate) VALUES(1, sq_reply.NEXTVAL, '다음달부터 가격이 1000원 오릅니다. :)', DEFAULT, sysdate);
INSERT INTO tr_reply(qNo, rNo, rContent, rWriter, rDate) VALUES(2, sq_reply.NEXTVAL, '다음달부터 가격이 1000원 오릅니다. :)', DEFAULT, sysdate);

