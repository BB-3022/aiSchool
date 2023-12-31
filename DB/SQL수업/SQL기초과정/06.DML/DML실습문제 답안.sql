/* 
   DML 문법 문제를 풀이합니다 
   !!주의사항 
   ==> 각 문항을 정상적으로 풀고나면 반드시 COMMIT; 명령을 실행해주세요.
       그래야 데이터가 영구적으로 테이블에 반영이 됩니다. 
       만약 데이터를 잘못 처리했다면 ROLLBACK; 명령어로 되돌릴 수 있습니다.
*/ 


/*
1. K상품몰에 새로운 회원이 회원가입을 했습니다.
   아래 데이터를 확인하여 TB_MEMBER 테이블에 등록될 수 있도록 해주세요. 

데이터 => [  
MEMBER_ID    : 'NEWMAN' 
MEMBER_NAME  : '별빛이내린다'
PASSWD       : 'STAR123!' 
PAY_CARD_NO  : '1111-2222-3333-4444' 
JOIN_DY      : 현재일자 (SYSDATE 를 활용해 YYYYMMDD 형태의 문자열로 입력)
GRADE_CD     : 1  
GENDER       : '남'  
AGE          : 25 
DEL_YN       : 'N' 
]
*/ 

INSERT INTO TB_MEMBER ( 
       MEMBER_ID    --회원ID 
     , MEMBER_NAME  --회원이름 
     , PASSWD       --비밀번호 
     , PAY_CARD_NO  --결제카드번호
     , JOIN_DY      --가입일자
     , GRADE_CD     --등급코드 
     , GENDER       --성별   
     , AGE          --나이 
     , DEL_YN       --삭제여부 
) VALUES ( 
       'NEWMAN' 
     , '별빛이내린다'
     , 'STAR123'
     , '1111-2222-3333-4444' 
     , TO_CHAR(SYSDATE , 'YYYYMMDD') 
     , 1
     , '남' 
     , 25
     , 'N'      
); 
COMMIT; 



/*
2. 회원ID가 'CCCCC' 인 회원의 결제카드정보를 변경하려고 합니다. 
   적절한 DML을 이용하여 데이터를 변경해주세요. 

[ 변경할 결제카드번호 : '1234-5678-AAAA-BBBB' ]  
*/ 


UPDATE TB_MEMBER 
   SET PAY_CARD_NO = '1234-5678-AAAA-BBBB'
 WHERE MEMBER_ID = 'CCCCC'; 

COMMIT; 



/*
3. 회원 'BBBBB' 의 연락처 중에 구분코드가 '집' 인 연락처를 삭제(DELETE) 해주세요.  */ 

DELETE FROM TB_MEMBER_TEL 
 WHERE MEMBER_ID = 'BBBBB'
   AND TEL_DV_CD = '집' ; 
   
COMMIT; 

/* 
4. TB_ORDER 테이블은 회원이 특정 상품을 주문할때 등록되는 데이터입니다.
   다음 중 회원이름이 '사용자H' 인 회원이 '전기밥솥'을 1개 구매하려고 할 때 다음과 같이 데이터를 구성할 수 있습니다. 
   아래 데이터에 맞춰 INSERT 를 해주세요. 

데이터 => [
ORDER_NO    : 6 
MEMBER_ID   : '사용자H' 의 MEMBER_ID를 찾아서 입력해주세요.  (힌트 : TB_MEMBER 테이블을 조회해보기) 
PRD_ID      : '건조기'의 PRD_ID 를 찾아서 입력해주세요.      (힌트 : TB_PRD 테이블을 조회해보기 )
ORDER_DATE  : SYSDATE
ORDER_CNT   : 1 
ORDER_PRICE : '건조기'의 PRD_PRICE 를 찾아서 입력해주세요. 
] 
*/

INSERT INTO TB_ORDER ( 
       ORDER_NO
     , MEMBER_ID
     , PRD_ID
     , ORDER_DATE
     , ORDER_CNT
     , ORDER_PRICE
) VALUES ( 
       '6' 
     , 'HHHHH'
     , 'P0004'
     , TO_CHAR(SYSDATE , 'YYYYMMDD') 
     , 1 
     , 800000 
) ; 

COMMIT; 



/*
5. 2023년을 맞이해 새로운 이벤트를 진행하려고 합니다. 
   회원들 중에 등급코드가 1(브론즈) 인 대상을 모두 등급코드 2(실버) 로 업그레이드를 할 예정입니다. 
   적절한 DML를 이용해 데이터를 변경해주세요. 
*/

UPDATE TB_MEMBER
   SET GRADE_CD = 2 
 WHERE GRADE_CD = 1 ; 

COMMIT; 



/*
6. 회원ID 가 'BBBBB' 인 회원이 연락처 정보를 변경했습니다. 
   변경하려는 정보는 다음과 같습니다.

   휴대폰 : '010-9999-9999'
   집    : '062-999-9999' 

   TB_MEMBER_TEL 데이터를 확인해서 이미 존재하는 연락처라면 UPDATE 를 , 존재하지 않는 데이터라면 INSERT 를 통해 
   해당 데이터를 처리해주세요. (힌트: TB_MEMBER_TEL 테이블을 조회해서 데이터가 있는지 없는지 확인해보세요)
*/ 

SELECT * 
  FROM TB_MEMBER_TEL 
 WHERE MEMBER_ID = 'BBBBB'; --휴대폰이 존재하는 상황 

UPDATE TB_MEMBER_TEL 
   SET TEL_NO = '010-9999-9999'
 WHERE MEMBER_ID = 'BBBBB'
   AND TEL_DV_CD = '휴대폰'; 

--집 연락처는 따로 없으므로 INSERT 를 해준다. 
INSERT INTO TB_MEMBER_TEL ( 
       MEMBER_ID
     , TEL_DV_CD
     , TEL_NO 
) VALUES ( 
       'BBBBB'
     , '집'
     , '062-999-9999' 
);
COMMIT; 



/*
7.  K쇼핑몰은 상품 가격이 5000원 이하인 대상은 상품으로 등록하지 않기로 결정하였습니다. 
    TB_PRD (상품 테이블) 의 PRD_PRICE (상품가격) 이 5000원 이하인 대상은 삭제 처리를 해주세요. 
*/ 

DELETE FROM TB_PRD 
 WHERE PRD_PRICE <= 5000  ;
 
COMMIT ;



/*
8. TB_MEMBER_LIKE 테이블은 회원이 선호하는 상품타입을 등록해놓은 테이블입니다. 
   현재 DDDDD가 선호하는 상품은 다음과 같습니다. (SELECT * FROM TB_MEMBER_LIKE WHERE MEMBER_ID = 'BBBBB' ) 
   [ 컴퓨터 , 스마트폰 ] 

   현재 상태에서 BBBBB가 선호하는 상품을 다음과 같이 변경하려고 할때 적절히 DML 을 실행하여 주세요.
   ( 만약 INSERT 를 해야할 경우 REG_DATE(등록시점)은 SYSDATE 가 입력되도록 해주세요) 
   [ 컴퓨터 , 가전 ] 
   
*/ 

INSERT INTO TB_MEMBER_LIKE (
       MEMBER_ID
     , LIKE_PRD_TYPE
     , REG_DATE 
) VALUES ( 
       'BBBBB'
     , '가전'
     , SYSDATE
); 

DELETE FROM TB_MEMBER_LIKE
 WHERE MEMBER_ID = 'BBBBB' 
   AND LIKE_PRD_TYPE = '스마트폰' ; 

COMMIT ;



/*
9. 현재 TB_PRD 테이블에는 SELL_COMP_NAME (판매회사이름) 이 '삼성' 인 데이터가 있습니다. 
   정확한 구분을 하기 위해서 SELL_COMP_NAME 이 '삼성' 이면서 PRD_TYPE(상품타입) 이 '컴퓨터' 이거나 '스마트폰' 이면 
   판매회사이름을 '삼성ELEC' 으로 변경하려고 합니다. 
   위 조건에 맞춰 알맞게 UPDATE를 진행해주세요. 
*/ 

UPDATE TB_PRD 
   SET SELL_COMP_NAME = '삼성ELEC' 
 WHERE SELL_COMP_NAME = '삼성'
   AND PRD_TYPE IN ('컴퓨터' , '스마트폰'); 

COMMIT; 


--수고많으셨습니다. 