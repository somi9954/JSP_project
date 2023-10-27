# JSP 프로젝트

## TDD를 통한 설계
- 의존성 추가(pom.xml)
    - junit5
    - mockito
    - maven-sure-fire plugin
    - servlet-api
    - servlet-servlet.jsp-api
    - jstl api
    - jstl implementation
    - lombok
- 톰캣10 서버 설정
- 회원 가입 기능 설계(JoinService)
   - models/member/JoinService.java
   - 필수 항목 검증(아이디, 비밀번호, 비밀번호 확인, 회원명, 이메일, 휴대전화, 회원가입약관 동의)
   - 아이디 자리수(6자리 이상), 비밀번호 자리수 (8자리 이상) 체크
   - 비밀번호, 비밀번호 확인 입력 데이터 일치여부 체크
   - 휴대전화번호 유효성 검사(형식,자리수 (10자리 이상)체크)
   - 이메일 유효성 검사(형식)
   - 아이디 중복 여부 체크 - 중복된 경우 가입 불가
   - 회원 정보를 저장
- 로그인 기능 설계 (LoginService)
  -  models/member/LoginService.java
  - 필수 항목 검증(아이디, 비밀번호)
  - 아이디에 해당하는 회원 정보가 있는지 체크
  - 로그인 처리(세션에 회원 정보를 저장)


## 기능 통합
- 회원가입 
  -  Controller : /member/join
      - controllers/member/JoinController
      - GET : 회원가입 양식
      - POST : 회원가입 처리
  - View : /WEB-INF/templates/member/join.jsp
- 로그인 
  -  Controller : /member/login
      - controllers/member/LoginController.java
      - GET : 로그인 양식
      - POST : 로그인 처리
  - View : /WEB-INF/templates/member/login.jsp 
- 메인페이지    
  - 로그인 상태
    - 사용자명(아이디)님 로그인 메세지 출력
    - 로그아웃(/member/logout), 마이페이지(/mypage)링크
  - 미로그인 상태
    - 회원가입(/member/join), 로그인(/member/login)링크
- 로그아웃
  - Controller : /member/logout
    - controllers/member/LogoutController.java
  - GET, POST 메서드 상관 없이 기능 할 수 있도록 처리



## 완성화면
### 회원가입
<img src="https://github.com/somi9954/JSP_project/assets/137499604/e3aad281-fdf9-433f-9e18-636a5bdb7e63" width="500" height="650" />

### 로그인
<img src="https://github.com/somi9954/JSP_project/assets/137499604/11c2fe18-80c0-4d7f-b586-24c5b14ccca3" width="500" height="500" />

### 메인페이지
<img src="https://github.com/somi9954/JSP_project/assets/137499604/fa65e9d0-e558-4981-b976-f7cde4e82502" width="500" height="500" />
