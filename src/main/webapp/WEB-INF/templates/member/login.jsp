<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<c:url var="action" value="/member/login" />
<c:url var="joinUrl" value="/member/join" />
<c:url var="findIdUrl" value="/member/find_id" />
<c:url var="findPwUrl" value="/member/find_pw" />
<layout:main title="로그인">
    <form id="frmLogin" name="frmLogin" method="post" action="${action}" autocomplete="off" target="ifrmProcess">
        <div class="login">
            <h1 class="login_title">로그인</h1>
        <dl>
            <dt>아이디</dt>
            <dd>
                <input type="text" name="userId" value="${cookie.saveId.value}" class="id">
            </dd>
        </dl>
        <dl>
            <dt>비밀번호</dt>
            <dd>
                <input type="password" name="userPw" class="password">
            </dd>
        </dl>
        </div>
        <div class="menu">
            <label>
            <input type="checkbox" name="saveId" value="true" id="saveId"${cookie.saveId == null ? '':' checked'}>
            <label for="saveId">아이디 저장</label>
            </label>
            <a href="${findIdUrl}" class="menus">아이디 찾기/</a>
            <a href="${findPwUrl}" class="menus">비밀번호 찾기/</a>
            <a href="${joinUrl}" class="menus">회원가입</a>
        </div>
        <div class="btns">
        <button type="submit">로그인</button>
        </div>
    </form>
</layout:main>
