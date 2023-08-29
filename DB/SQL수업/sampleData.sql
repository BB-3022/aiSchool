/* 기존에 존재하는 테이블을 삭제 */ 
DROP TABLE MAPPING ;
DROP TABLE TB_GRADE ; 
DROP TABLE TB_PRD_PIC; 
DROP TABLE TB_MEMBER_LIKE ; 
DROP TABLE TB_WISH ;   
DROP TABLE TB_DELIV_INFO ; 
DROP TABLE TB_ORDER ; 
DROP TABLE TB_PRD ; 
DROP TABLE TB_MEMBER_TEL; 
DROP TABLE TB_MEMBER ;
DROP TABLE 회원연락처 ; 
DROP TABLE 회원 ; 

--------------------------------------------------------------------------------

/* TB_GRADE 테이블 생성 */ 
CREATE TABLE TB_GRADE (    -- 등급코드와 등급이름이 저장되어 있는 테이블
    GRADE_CD     NUMBER         NOT NULL  , 
    GRADE_NAME   VARCHAR2(50)   NOT NULL  
) ; 

/* TB_GRADE 테이블에 GRADE_CD 컬럼으로 PRIMARY KEY 설정 */ 
ALTER TABLE TB_GRADE ADD CONSTRAINT PK_GRADE PRIMARY KEY(GRADE_CD) ;

/* TB_GRADE 테이블의 각 컬럼에 코멘트를 추가 */ 
COMMENT ON COLUMN TB_GRADE.GRADE_CD IS '등급코드';
COMMENT ON COLUMN TB_GRADE.GRADE_NAME IS '등급이름';


/* TB_MEMBER 테이블 생성 */ 
CREATE TABLE TB_MEMBER (    --사용자의 정보를 저장하는 테이블 

    MEMBER_ID     VARCHAR2(30)   NOT NULL   ,  --회원ID 
    MEMBER_NAME   VARCHAR2(20)   NOT NULL   ,  --회원이름 
    PASSWD        VARCHAR2(50)   NOT NULL   ,  --패스워드
    PAY_CARD_NO   VARCHAR2(20)   NOT NULL   ,  --결제카드번호
    JOIN_DY       VARCHAR2(8)    NOT NULL   ,  --가입일자     
    GRADE_CD      NUMBER         NOT NULL   ,  --등급코드 
    GENDER        VARCHAR(5)                ,  --성별  
    AGE           NUMBER(3,0)               ,  --나이  
    DEL_YN        VARCHAR2(2) DEFAULT 'N'      --탈퇴여부 
) ; 

/* TB_MEMBER 테이블의 MEMBER_ID 컬럼을 기준으로 PRIMARY KEY 생성 */ 
ALTER TABLE TB_MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY(MEMBER_ID) ;

/* TB_MEMBER 테이블의 각 컬럼에 코멘트를 추가 */ 
COMMENT ON COLUMN TB_MEMBER.MEMBER_ID IS '회원ID';
COMMENT ON COLUMN TB_MEMBER.MEMBER_NAME IS '회원이름';
COMMENT ON COLUMN TB_MEMBER.PASSWD IS '패스워드';
COMMENT ON COLUMN TB_MEMBER.PAY_CARD_NO IS '결제카드번호';
COMMENT ON COLUMN TB_MEMBER.JOIN_DY IS '가입일자';
COMMENT ON COLUMN TB_MEMBER.GRADE_CD IS '등급코드';
COMMENT ON COLUMN TB_MEMBER.GENDER IS '성별';
COMMENT ON COLUMN TB_MEMBER.AGE IS '나이';


/* TB_MEMBER_TEL 테이블 생성 */ 

CREATE TABLE TB_MEMBER_TEL (
    MEMBER_ID VARCHAR2(30) NOT NULL ,    --회원ID  
    TEL_DV_CD    VARCHAR2(10) NOT NULL , --연락처_구분_코드 
    TEL_NO    VARCHAR2(20) NOT NULL      --연락처_번호     
) ; 

/* TB_MEMBER_TEL 테이블의 MEMBER_ID 와 TEL_DV_CD 컬럼을 기준으로 PRIMARY KEY 생성 */ 
ALTER TABLE TB_MEMBER_TEL ADD CONSTRAINT PK_MEMBER_TEL PRIMARY KEY(MEMBER_ID , TEL_DV_CD) ; 

/* TB_MEMBER_TEL 테이블의 각 컬럼에 코멘트를 추가 */ 
COMMENT ON COLUMN TB_MEMBER_TEL.MEMBER_ID IS '회원ID';
COMMENT ON COLUMN TB_MEMBER_TEL.TEL_DV_CD IS '연락처구분코드';
COMMENT ON COLUMN TB_MEMBER_TEL.TEL_NO IS '연락처번호';


/* TB_PRD 테이블 생성*/ 
CREATE TABLE TB_PRD (              --상품 정보가 들어있는 테이블 
   PRD_ID         VARCHAR2(30)  NOT NULL   ,   --상품ID 
   PRD_NAME       VARCHAR2(50)  NOT NULL   ,   --상품명 
   PRD_TYPE       VARCHAR2(50)  NOT NULL   ,   --상품타입 
   PRD_INFO       VARCHAR2(4000) NOT NULL  ,   --상품정보 
   PRD_PRICE      NUMBER         NOT NULL  ,   --상품가격 
   SELL_COMP_NAME VARCHAR2(50)  NOT NULL   ,   --판매회사명
   REG_DATE       DATE          NOT NULL       --등록일시    
) ; 

/* TB_PRD 테이블의 PRD_ID 컬럼을 PRIMARY KEY 로 설정 */ 
ALTER TABLE TB_PRD ADD CONSTRAINT PK_PRD PRIMARY KEY(PRD_ID);

/* TB_PRD 테이블의 각 컬럼에 코멘트를 추가 */ 
COMMENT ON COLUMN TB_PRD.PRD_ID IS '상품ID';
COMMENT ON COLUMN TB_PRD.PRD_NAME IS '상품이름';
COMMENT ON COLUMN TB_PRD.PRD_TYPE IS '상품타입';
COMMENT ON COLUMN TB_PRD.PRD_INFO IS '상품정보';
COMMENT ON COLUMN TB_PRD.PRD_PRICE IS '상품가격';
COMMENT ON COLUMN TB_PRD.SELL_COMP_NAME IS '판매회사이름';
COMMENT ON COLUMN TB_PRD.REG_DATE IS '등록일시';


/* TB_MEMBER_LIKE 테이블 생성 */ 
CREATE TABLE TB_MEMBER_LIKE (     --사용자가 선호하는 상품 타입을 저장하는 테이블 
    MEMBER_ID      VARCHAR2(30)   NOT NULL   ,  --회원ID 
    LIKE_PRD_TYPE  VARCHAR2(50)   NOT NULL   ,  --상품타입
    REG_DATE       DATE           NOT NULL      --등록일시     
) ; 

/* TB_MEMBER_LIKE 테이블의 MEMBER_ID 와 LIKE_PRD_TYPE 컬럼을 조합해서 PRIMRAY KEY 처리 */ 
ALTER TABLE TB_MEMBER_LIKE ADD CONSTRAINT PK_MEMBER_LIKE PRIMARY KEY ( MEMBER_ID , LIKE_PRD_TYPE ) ;

/* TB_MEMBER_LIKE 테이블의 각 컬럼에 코멘트를 추가 */ 
COMMENT ON COLUMN TB_MEMBER_LIKE.MEMBER_ID IS '회원ID';
COMMENT ON COLUMN TB_MEMBER_LIKE.LIKE_PRD_TYPE IS '선호상품타입';
COMMENT ON COLUMN TB_MEMBER_LIKE.REG_DATE IS '등록일시';


/* TB_PRD_PIC 테이블 생성 */ 
CREATE TABLE TB_PRD_PIC (         --상품 정보 관련 사진정보가 들어있는 테이블 
   PIC_NO        NUMBER         NOT NULL   ,  --사진번호  
   PRD_ID        VARCHAR2(30)   NOT NULL   ,  --상품ID 
   PIC_INFO      BLOB           NULL       ,  --사진자체저장할경우
   PIC_PATH      VARCHAR2(500)  NULL          --사진경로만저장할경우
); 

/* TB_PRD_PIC 테이블의 PIC_NO 컬럼을 기준으로 PRIMARY KEY 생성 */ 
ALTER TABLE TB_PRD_PIC ADD CONSTRAINT PK_PRD_PIC PRIMARY KEY ( PIC_NO ) ;

/* TB_PRD_PIC 테이블의 각 컬럼에 코멘트 추가 */ 
COMMENT ON COLUMN TB_PRD_PIC.PIC_NO IS '사진번호';
COMMENT ON COLUMN TB_PRD_PIC.PRD_ID IS '상품ID';
COMMENT ON COLUMN TB_PRD_PIC.PIC_INFO IS '사진정보(사진자체저장할경우)';
COMMENT ON COLUMN TB_PRD_PIC.PIC_PATH IS '사진경로(사진경로만저장할경우)';

/* TB_ORDER 테이블 생성 */ 
CREATE TABLE TB_ORDER ( 
   ORDER_NO     NUMBER         NOT NULL   ,  --주문번호 
   MEMBER_ID    VARCHAR2(30)   NOT NULL   ,  --회원ID
   PRD_ID       VARCHAR2(30)   NOT NULL   ,  --상품ID 
   ORDER_DATE   DATE           NOT NULL   ,  --주문일시
   ORDER_CNT    NUMBER         NOT NULL   ,  --주문수량 
   ORDER_PRICE  NUMBER         NOT NULL      --주문가격 (수량 X 상품가격) 
) ; 

/* TB_ORDER 테이블의 ORDER_NO 컬럼을 PRIMARY KEY 로 세팅 */ 
ALTER TABLE TB_ORDER ADD CONSTRAINT PK_ORDER PRIMARY KEY (ORDER_NO ) ;

/* TB_ORDER 테이블의 각 컬럼에 코멘트 추가 */ 
COMMENT ON COLUMN TB_ORDER.ORDER_NO IS '주문번호';
COMMENT ON COLUMN TB_ORDER.MEMBER_ID IS '회원ID';
COMMENT ON COLUMN TB_ORDER.PRD_ID IS '상품ID';
COMMENT ON COLUMN TB_ORDER.ORDER_DATE IS '주문일시';
COMMENT ON COLUMN TB_ORDER.ORDER_CNT IS '주문개수';
COMMENT ON COLUMN TB_ORDER.ORDER_PRICE IS '주문가격';

/* TB_DELIV_INFO 테이블 생성*/ 
CREATE TABLE TB_DELIV_INFO ( 
  ORDER_NO        NUMBER       NOT NULL   ,  --주문번호
  DELIV_STATE     VARCHAR2(30) NOT NULL   ,  --배송상태
  REG_SEQ         NUMBER       NOT NULL   ,  --등록순번 
  REG_DATE        DATE         NOT NULL      --등록일시 
) ; 

/* TB_DELIV_INFO 테이블의 ORDER_NO 와 DELIV_STATE , REG_SEQ 컬럼을 조합해 PRIMARY KEY 로 구성 */ 
ALTER TABLE TB_DELIV_INFO ADD CONSTRAINT PK_DELIV_INFO PRIMARY KEY(ORDER_NO , DELIV_STATE , REG_SEQ) ; 

/* TB_DELIV_INFO 테이블의 각 컬럼에 코멘트 추가 */ 
COMMENT ON COLUMN TB_DELIV_INFO.ORDER_NO IS '주문번호';
COMMENT ON COLUMN TB_DELIV_INFO.DELIV_STATE IS '배송상태';
COMMENT ON COLUMN TB_DELIV_INFO.REG_SEQ IS '등록순번';
COMMENT ON COLUMN TB_DELIV_INFO.REG_DATE IS '등록일시';

/* TB_WISH 테이블 생성 */ 
CREATE TABLE TB_WISH (         --사용자가 상품에 대해 찜을 한 목록을 저장하는 테이블
   MEMBER_ID   VARCHAR2(30)   NOT NULL   ,  --회원ID 
   PRD_ID      VARCHAR2(30)   NOT NULL   ,  --상품ID 
   REG_DATE    DATE           NOT NULL      --등록일시 
) ; 

/* TB_WISH 테이블의 MEMBER_ID , PRD_ID 를 조합하여 PRIMARY KEY 설정 */ 
ALTER TABLE TB_WISH ADD CONSTRAINT PK_WISH PRIMARY KEY ( MEMBER_ID , PRD_ID ) ;

/* TB_WISH 테이블의 각 컬럼에 코멘트 추가 */ 
COMMENT ON COLUMN TB_WISH.MEMBER_ID IS '회원ID';
COMMENT ON COLUMN TB_WISH.PRD_ID IS '상품ID';
COMMENT ON COLUMN TB_WISH.REG_DATE IS '등록일시';

CREATE TABLE MAPPING (           --각 테이블과 컬럼에 대한 영어-한글 매핑 관계를 저장한 테이블 
   ENG   VARCHAR2(100) NOT NULL , 
   KOR   VARCHAR2(100) NOT NULL 
) ;

--MAPPING 테이블의 ENG 컬럼을 PRIMARY KEY 로 설정 
ALTER TABLE MAPPING ADD CONSTRAINT PK_MAPPING PRIMARY KEY(ENG); 
 

/***************************** 테이블 간 외래키 (Foreign key 설정) ***************************/ 
-- TB_MEMBER 와 TB_MEMBER_TEL 간 FK 설정 
ALTER TABLE TB_MEMBER_TEL ADD CONSTRAINT FK_MEMBER 
FOREIGN KEY(MEMBER_ID) REFERENCES TB_MEMBER(MEMBER_ID) ; 

--TB_MEMBER 와 TB_MEMBER_LIKE 간 FK 설정 
ALTER TABLE TB_MEMBER_LIKE ADD CONSTRAINT FK_MEMBER_LIKE FOREIGN KEY(MEMBER_ID) REFERENCES TB_MEMBER(MEMBER_ID) ; 

--TB_MEMBER 와 TB_WISH 간 FK설정
ALTER TABLE TB_WISH ADD CONSTRAINT FK_WISH FOREIGN KEY(MEMBER_ID) REFERENCES TB_MEMBER(MEMBER_ID) ON DELETE CASCADE; 
--TB_PRD 와 TB_WISH 간 FK 설정 
ALTER TABLE TB_WISH ADD CONSTRAINT FK_WISH_2 FOREIGN KEY(PRD_ID) REFERENCES TB_PRD(PRD_ID) ON DELETE SET NULL; 

--TB_PRD 와 TB_PRD_PIC 간 FK 설정
ALTER TABLE TB_PRD_PIC ADD CONSTRAINT FK_PRD_PIC FOREIGN KEY(PRD_ID) REFERENCES TB_PRD(PRD_ID) ON DELETE CASCADE ;  





/********************************** 데이터 삽입 구간 ***********************************/

/* TB_GRADE 테이블에 테스트용 데이터 삽입 */ 
INSERT INTO TB_GRADE VALUES( 1 , '브론즈');
INSERT INTO TB_GRADE VALUES( 2 , '실버');
INSERT INTO TB_GRADE VALUES( 3 , '골드');
INSERT INTO TB_GRADE VALUES( 4 , 'VIP');
INSERT INTO TB_GRADE VALUES( 5 , 'VVIP');


/* TB_MEMBER 테이블에 테스트용 데이터 삽입 */ 
INSERT INTO TB_MEMBER VALUES ( 'AAAAA' , '사용자A' , 'AAAAA' , '1111-1111-1111-1111' , TO_CHAR( TO_DATE('20200101' , 'YYYYMMDD') , 'YYYYMMDD') ,  1 , '남' , NULL , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'BBBBB' , '사용자B' , 'BBBBB' , '2222-2222-2222-2222' , TO_CHAR( TO_DATE('20200327' , 'YYYYMMDD') , 'YYYYMMDD') ,  2 , '여' ,   25 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'CCCCC' , '사용자C' , 'CCCCC' , '3333-3333-3333-3333' , TO_CHAR( TO_DATE('20210105' , 'YYYYMMDD') , 'YYYYMMDD') ,  1 , '남' ,   27 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'DDDDD' , '사용자D' , 'DDDDD' , '4444-4444-4444-4444' , TO_CHAR( TO_DATE('20210630' , 'YYYYMMDD') , 'YYYYMMDD') ,  3 , '여' ,   30 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'EEEEE' , '사용자E' , 'EEEEE' , '5555-5555-5555-5555' , TO_CHAR( TO_DATE('20210831' , 'YYYYMMDD') , 'YYYYMMDD') ,  1 , '남' , NULL , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'FFFFF' , '사용자F' , 'FFFFF' , '6666-6666-6666-6666' , TO_CHAR( TO_DATE('20220216' , 'YYYYMMDD') , 'YYYYMMDD') ,  3 , '여' ,   35 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'GGGGG' , '사용자G' , 'GGGGG' , '7777-7777-7777-7777' , TO_CHAR( TO_DATE('20220317' , 'YYYYMMDD') , 'YYYYMMDD') ,  2 , '남' ,   39 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'HHHHH' , '사용자H' , 'HHHHH' , '8888-8888-8888-8888' , TO_CHAR( TO_DATE('20220812' , 'YYYYMMDD') , 'YYYYMMDD') ,  5 , NULL ,   44 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'IIIII' , '사용자I' , 'IIIII' , '9999-9999-9999-9999' , TO_CHAR( TO_DATE('20230430' , 'YYYYMMDD') , 'YYYYMMDD') ,  4 , NULL ,   52 , 'N' ) ;



/* TB_MEMBER 테이블에 테스트용 데이터 삽입 */ 
INSERT INTO TB_MEMBER_TEL VALUES ( 'AAAAA' , '집' , '062-123-1234' );
INSERT INTO TB_MEMBER_TEL VALUES ( 'AAAAA' , '휴대폰' , '010-1231-1231' );
INSERT INTO TB_MEMBER_TEL VALUES ( 'AAAAA' , '회사' , '02-9999-9999' );
INSERT INTO TB_MEMBER_TEL VALUES ( 'BBBBB' , '집' , '062-555-7777' );
INSERT INTO TB_MEMBER_TEL VALUES ( 'BBBBB' , '휴대폰' , '010-5555-8888' );


/* TB_PRD 테이블에 테스트 데이터 삽입 20건*/ 
INSERT INTO TB_PRD VALUES ('P0001' , '헤어드라이기' , '가전' , '머리를 아주 잘 말려주는 헤어드라이기 입니다.' , 30000 , 'LG' , TO_DATE('20230501122357' , 'YYYYMMDDHH24MISS') ) ; 
INSERT INTO TB_PRD VALUES ('P0002', '에어컨', '가전', '더위를 싹 싹 날려주는 에어컨입니다.', 1500000, '삼성',  TO_DATE('20230501152222' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0003', '세탁기', '가전', '옷을 깨끗하게 세탁해주는 세탁기입니다.', 600000, 'LG',  TO_DATE('20230502030212' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0004', '건조기', '가전', '빠르고 간편하게 옷을 건조할 수 있는 건조기입니다.', 800000, '삼성',  TO_DATE('20230502175525' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0005', '노트북', '컴퓨터', '성능이 뛰어나고 가벼운 노트북입니다.', 1500000, 'Apple',  TO_DATE('20230503235959' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0006', '데스크탑', '컴퓨터', '강력한 성능을 가진 데스크탑 컴퓨터입니다.', 2000000, 'Dell',  TO_DATE('20230503122337' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0007', '태블릿', '컴퓨터', '가벼우면서도 다양한 기능을 갖춘 태블릿입니다.', 800000, '삼성',  TO_DATE('20230504221012' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0008', '애플14', '스마트폰', '다양한 기능을 가진 스마트폰입니다.', 1200000, 'Apple',  TO_DATE('20230504105523' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0009', '갤럭시S23', '스마트폰', '줌이 엄청나게 좋은 스마트폰입니다.', 1500000, '삼성',  TO_DATE('20230505172325' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0010' ,'조아샴푸'  , '욕실용품' , '머리가 개운해지는 샴푸입니다.' , 20000 , 'LG' ,  TO_DATE('20230505190101' , 'YYYYMMDDHH24MISS')) ;
INSERT INTO TB_PRD VALUES ('P0011', '주전자', '주방용품', '물을 끓이기에 적합한 주전자입니다.', 20000, 'LG',  TO_DATE('20230506120000' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0012', '전기밥솥', '주방용품', '쌀맛이 좋아지는 전기밥솥입니다.', 80000, '삼성',  TO_DATE('20230506124728' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0013', '냄비', '주방용품', '식재료를 끓이기에 적합한 냄비입니다.', 30000, '매일유업',  TO_DATE('20230507123456' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0014', '칼', '주방용품', '식재료를 자르기에 적합한 칼입니다.', 15000, '매일유업',  TO_DATE('20230507122357' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0015', '수세미', '욕실용품', '욕실 청소에 사용되는 수세미입니다.', 5000, '3M',  TO_DATE('20230508110025' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0017', '곰팡이제거제', '욕실용품', '곰팡이를 제거할 때 최고입니다.', 10000, '3M',  TO_DATE('20230508150010' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0018', '샤워기', '욕실용품', '강력한 물줄기로 청결한 목욕을 즐길 수 있는 샤워기입니다.', 50000, '다우니',  TO_DATE('20230509010101' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0019', '린스', '욕실용품', '찰랑거리는 머리를 가지고 싶다면 이 제품을 기억하세요' ,  20000 , '다우니' ,  TO_DATE('20230509001212' , 'YYYYMMDDHH24MISS')) ; 
INSERT INTO TB_PRD VALUES ('P0020', '수건', '욕실용품', '호텔에서도 사용되는 고급소재의 친환경 타올 소재의 수건입니다.' , 5000, '다우니'  , TO_DATE('20230510215348' , 'YYYYMMDDHH24MISS')) ; 


/* TB_MEMBER_LIKE 테이블에 테스트 데이터를 추가 */ 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'AAAAA' , '가전' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'BBBBB' , '컴퓨터' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'BBBBB' , '스마트폰' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'CCCCC' , '주방용품' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'CCCCC' , '욕실용품' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '컴퓨터' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '주방용품' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '스마트폰' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '가전' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '욕실용품' , SYSDATE) ; 

 
/* TB_ORDER 테이블에 테스트 데이터 추가 */ 
INSERT INTO TB_ORDER VALUES ( 1 , 'AAAAA' , 'P0002' , TO_DATE('20230427') , 1 , 1500000 ) ; 
INSERT INTO TB_ORDER VALUES ( 2 , 'AAAAA' , 'P0003' , TO_DATE('20230428') , 1 ,  600000 ) ; 
INSERT INTO TB_ORDER VALUES ( 3 , 'AAAAA' , 'P0004' , TO_DATE('20230429') , 1 ,  800000 ) ; 
INSERT INTO TB_ORDER VALUES ( 4 , 'AAAAA' , 'P0020' , TO_DATE('20230430') , 5 ,   25000 ) ; 
 
 
/* TB_DELIV_INFO 테이블에 테스트 데이터 추가 */ 
INSERT INTO TB_DELIV_INFO VALUES ( 1 , '캠프도착'   , 1 , TO_DATE('20230427')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 1 , '배송출발'   , 2 , TO_DATE('20230428')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 1 , '배송완료'   , 3 , TO_DATE('20230430')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 2 , '캠프도착'   , 1 , TO_DATE('20230428')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 2 ,  '배송출발'  , 2 , TO_DATE('20230429')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 3 ,  '캠프도착'  , 1 , TO_DATE('20230430')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 4 ,  '캠프도착'  , 1 , TO_DATE('20230430')) ; 


/* TB_WISH 테이블에 예시 데이터 추가 */ 
INSERT INTO TB_WISH VALUES ( 'AAAAA' , 'P0002' , SYSDATE ); 
INSERT INTO TB_WISH VALUES ( 'AAAAA' , 'P0006' , SYSDATE ); 
INSERT INTO TB_WISH VALUES ( 'AAAAA' , 'P0007' , SYSDATE ); 
INSERT INTO TB_WISH VALUES ( 'AAAAA' , 'P0010' , SYSDATE ); 



--MAPPING 관련 데이터 삽입 
INSERT INTO MAPPING VALUES ('TB' , '테이블을 의미하는 접두사'); 
INSERT INTO MAPPING VALUES ('MEMBER' , '회원');
INSERT INTO MAPPING VALUES ('ID'     , '아이디');
INSERT INTO MAPPING VALUES ('NAME'   , '이름');
INSERT INTO MAPPING VALUES ('PASSWD' , '비밀번호'); 
INSERT INTO MAPPING VALUES ('PAY'    , '결제') ;
INSERT INTO MAPPING VALUES ('CARD'   , '카드');
INSERT INTO MAPPING VALUES ('GENDER' , '성별');
INSERT INTO MAPPING VALUES ('AGE'    , '나이');
INSERT INTO MAPPING VALUES ('REG'    , '등록');
INSERT INTO MAPPING VALUES ('DATE'   , '일시');
INSERT INTO MAPPING VALUES ('PRICE'  , '가격');
INSERT INTO MAPPING VALUES ('SELL'  , '판매');
INSERT INTO MAPPING VALUES ('COMP'  , '회사');
INSERT INTO MAPPING VALUES ('PIC'   , '사진');
INSERT INTO MAPPING VALUES ('ORDER'   , '주문');
INSERT INTO MAPPING VALUES ('CNT'     , '개수');
INSERT INTO MAPPING VALUES ('JOIN'    , '가입');
INSERT INTO MAPPING VALUES ('DY'     , '일자');
INSERT INTO MAPPING VALUES ('PRD'    , '상품');
INSERT INTO MAPPING VALUES ('LIKE'   , '선호');
INSERT INTO MAPPING VALUES ('TYPE'   , '타입');
INSERT INTO MAPPING VALUES ('DELIV'  , '배송');
INSERT INTO MAPPING VALUES ('WISH'  , '찜');
INSERT INTO MAPPING VALUES ('INFO'   , '정보');
INSERT INTO MAPPING VALUES ('NO'     , '번호');
INSERT INTO MAPPING VALUES ('GRADE'  , '등급');
INSERT INTO MAPPING VALUES ('CD'  , '코드');
INSERT INTO MAPPING VALUES ('ENG'  , '영문');
INSERT INTO MAPPING VALUES ('KOR'  , '한글');
INSERT INTO MAPPING VALUES ('SEQ'  , '순번');
INSERT INTO MAPPING VALUES ('DV'   , '구분'); 
INSERT INTO MAPPING VALUES ('TEL'   , '연락처'); 

COMMIT; 



CREATE TABLE 회원(
   회원ID VARCHAR2(5) PRIMARY KEY , 
     이름 VARCHAR2(50) NOT NULL 
) ; 

CREATE TABLE 회원연락처 (     
    회원ID     VARCHAR2(5)  ,
    구분코드    VARCHAR2(10) ,
    연락처      VARCHAR(15) NOT NULL 
) ; 

ALTER TABLE 회원연락처 ADD CONSTRAINT PK_회원연락처 PRIMARY KEY(회원ID , 구분코드) ; 

INSERT INTO 회원 VALUES ( 'A0001' , '동동일' ) ; 
INSERT INTO 회원 VALUES ( 'A0002' , '동동이' ) ; 
INSERT INTO 회원 VALUES ( 'A0003' , '동동삼' ) ; 
INSERT INTO 회원연락처 VALUES ( 'A0001' , '집전화' , '062-111-1111') ; 
INSERT INTO 회원연락처 VALUES ( 'A0001' , '휴대폰' , '010-1111-1111') ; 
INSERT INTO 회원연락처 VALUES ( 'A0002' , '휴대폰' , '010-2222-2222') ; 
INSERT INTO 회원연락처 VALUES ( 'A0004' , '휴대폰' , '010-4444-4444') ; 


--TB_PRD_PIC 관련 데이터 삽입 
INSERT INTO TB_PRD_PIC 
SELECT TO_NUMBER(SUBSTR(PRD_ID , 2 )) , PRD_ID , NULL ,  '/images/' || PRD_NAME || '.png' 
  FROM TB_PRD 
 ORDER BY PRD_ID ; 

COMMIT; 
