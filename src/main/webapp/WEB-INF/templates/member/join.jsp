<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<c:url var="action" value="/member/join" />
<layout:main title="회원가입">
    <form method="post" action="${action}" target="ifrmProcess">
        <div class="join">
            <h1 class="join_title">회원가입</h1>
        <dl>
            <dt>아이디</dt>
            <dd>
                <input type="text" name="userId" class="id" >
            </dd>
        </dl>
        <dl>
            <dt>비밀번호</dt>
            <dd>
                <input type="password" name="userPw" class="password">
            </dd>
        </dl>
        <dl>
            <dt>비밀번호 확인</dt>
            <dd>
                <input type="password" name="confirmUserPw" class="password">
            </dd>
        </dl>
        <dl>
            <dt>회원명</dt>
            <dd>
                <input type="text" name="userNm" class="name">
            </dd>
        </dl>
        <dl>
            <dt>이메일</dt>
            <dd>
                <input type="email" name="email" class="email">
            </dd>
        </dl>
        <dl>
            <dt>휴대전화</dt>
            <dd>
                <input type="text" name="mobile" class="mobile">
            </dd>
        </dl>
        </div>
        <div class="agree">
            <input type="checkbox" name="agree" value="true" id="agree">
            <label for="agree">회원가입 약관에 동의 합니다.</label>
        </div>
        <div class="btns">
            <button type="submit">가입하기</button>
            <button type="reset">다시입력</button>
        </div>
    </form>
</layout:main>
