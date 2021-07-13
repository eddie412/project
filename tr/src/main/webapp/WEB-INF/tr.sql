-------------- [테이블] 사용자 --------------
create table tr_member(	
  userId varchar2(15)  not null primary key,
  userPass varchar2(100) not null,
  userName varchar2(12) not null,
  userEmail varchar2(100),
  userPhone varchar2(11) not null,
  userAddr varchar2(300) not null,
  userBday Date not null
);




SELECT * FROM tr_member; 

/* 사용자 데이터 */
INSERT INTO tr_member VALUES('test', '1234', '테스트', 'test@example.com', '01011112222', '서울시 행복구 도도동', '00/01/01');
INSERT INTO tr_member VALUES('apple', 'pass01', '사과', 'apple@example.com', '01011112322', '서울시 행복구 도도동', '97/12/24');
INSERT INTO tr_member VALUES('rain_row', 'rain01@', '비주륵', 'rain@naver.com','01021549865', '경기도 사랑동 가족동 128', '98/04/12');
INSERT INTO tr_member VALUES('aaa', 'aaa', '비주륵', 'rain@naver.com','01021549865', '경기도 사랑동 가족동 128', '98/04/12');





-------------- [테이블] 주문내역 -------------- (다시 수정해야 함)
CREATE TABLE tr_order(
  oId varchar2(10) ,
  oNo number(10) primary key,
  oDate date default sysdate,
  oNon varchar2(30),                                        --상품번호
  oName varchar2(50),
  oInfo varchar2(1000),
  oPrice number(10),
  oCount number(2),
  oTotal number(10)
);

SELECT * FROM tr_order; 


/* 주문내역 데이터 */ 
INSERT INTO tr_order(oId, ono, odate, onon, oname, oinfo, oprice, ocount) VALUES('test', 20210707, sysdate, 'M123', '상품명1', '상품정보입니다.',10000, 2);
INSERT INTO tr_order(oId, ono, odate, onon, oname, oinfo, oprice, ocount) VALUES('test', 20210708, sysdate, 'M1145', '반짝구두', '구두가 또각또각',12000, 1);
INSERT INTO tr_order(oId, ono, odate, onon, oname, oinfo, oprice, ocount) VALUES('apple', 2021070801, sysdate, 'M1145', '반짝구두', '구두가 또각또각',12000, 5);
INSERT INTO tr_order(oId, ono, odate, onon, oname, oinfo, oprice, ocount) VALUES('rain_row', 2021070802, sysdate, 'C012', '짠 스팸', '너무 짜네요',2500, 3);

 

 

-------------- [테이블] 상품 --------------
create table tr_pro(
        pNo varchar2(10) not null primary key,
        pName varchar2(50),
        pInfo varchar2(1000),
        pImg varchar2(500),
        pPrice number(10),      -- 상품 가격
        pCount number(10) default 0,    -- 상품재고
        pSales number(3) default 0      -- 상품 총 판매량
);


SELECT * FROM tr_pro;

 
/* 상품 데이터 */
INSERT INTO tr_pro VALUES('M001', '장수막걸리', '백미를 사용해 장기저온숙성 방식으로 만들어져 영양이 풍부하고 자연발효에 의한 탄산과 어울려 감칠맛과 청량감이 일품인 막걸리', 'M_jangsu.jpg', 2500, 10, 0);
INSERT INTO tr_pro VALUES('W001', '세븐 폴스, 카베르네 소비뇽', '진한 과일 풍미에 묵직한 바디감이 느껴지는 레드와인', 'W_Seven Falls.jpg', 19000, 10, 5);

 

 

-------------- [테이블] 장바구니 -------------- 
CREATE TABLE tr_cart(
  cId   number not null primary key,      -- 장바구니 고유 번호
  userId    varchar2(15) not null,                  -- 사용자 계정
  pNo       varchar2(10) not null,                  -- 상품번호
  count number   --장바구니에 담은 상품개수
  );


CREATE sequence sq_cart
increment by 1
start with 1
maxvalue 1000
nocache;
  
  
ALTER Table tr_cart ADD Foreign Key(userId) REFERENCES tr_member(userId);
ALTER Table tr_cart ADD Foreign Key(pNo) REFERENCES tr_pro(pNo);


SELECT * FROM tr_cart; 



/* 장바구니 데이터 */ 
INSERT INTO tr_cart VALUES(sq_cart.NEXTVAL, 'test', 'W001', 3);
INSERT INTO tr_cart VALUES(sq_cart.NEXTVAL, 'test', 'M001', 2);


 


-------------- [테이블] 문의사항 -------------- 
CREATE TABLE tr_qna(
        qNo number(10) primary key,
        qTitle varchar2(100),
        qWriter varchar2(10) ,                        --작성자
        qDate date default sysdate,
        qContent varchar2(1000), 
        qPass number(12)
);

alter table tr_qna modify qWriter varchar2(10);

CREATE sequence sq_qna
increment by 1
start with 1
maxvalue 1000
nocache;


SELECT * FROM tr_qna;
 

/* 문의사항 데이터 */
 INSERT INTO tr_qna VALUES(sq_qna.NEXTVAL, '배송문의', 'test', sysdate, '배송 언제오나요?', 1234 );






 

 

COMMIT


 