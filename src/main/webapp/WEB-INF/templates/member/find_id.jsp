<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<c:url var="action" value="member/find_id" />
<c:url var="mainUrl" value="/" />
<layout:main title="아이디 찾기">
    <form method="post" action="${action}" target="ifrmProcess" autocomplete="off">
        <div class="find_id">
            <h1 class="find_id">아이디 찾기</h1>
        <dl>
            <dt>회원명</dt>
            <dt>
                <input type="text" name="userNm">
            </dt>
        </dl>
        <dl>
            <dt>휴대전화번호</dt>
            <dt>
                <input type="text" name="mobile">
            </dt>
        </dl>
        </div>
        <div class ="btns">
            <button type="submit">찾기</button>
            <button type="reset"><a href="${mainUrl}">취소</a></button>
        </div>
    </form>
</layout:main>