<%@ tag body-content="scriptless" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<%@ attribute name="title" %>
<fmt:setBundle basename="messages.commons"/>
<c:url var="mainUrl" value="/" />
<c:url var="loginUrl" value="/member/login" />
<c:url var="joinUrl" value="/member/join" />
<c:url var="logoutUrl" value="/member/logout" />
<c:url var="mypageUrl" value="/mypage" />

<layout:common title="${title}">
    <jsp:attribute name="header">
        <section id="site_top" class="layout_width">
            <nav class='left'>
                <a href="${mainUrl}">
                    <i class="xi-home"></i>메인페이지
                </a>
            </nav>
            <a href="${mainUrl}" class="logo">로고</a>
            <nav class="right">
    <c:if test="${sessionScope.member == null}"> <%-- 미 로그인 상태 --%>
        <a href="${logoutUrl}"><i class="xi-log-in"></i>로그인</a>
        <a href="${joinUrl}"><i class="xi-user-plus"></i>회원가입</a>
    </c:if>
                <c:if test="${sessionScope.member != null}"> <%-- 로그인 상태 --%>
                    <span class="userinfo">
        <fmt:message key="LOGIN_MSG">
            <fmt:param>${sessionScope.member.userNm}</fmt:param>
            <fmt:param>${sessionScope.member.userId}</fmt:param>
        </fmt:message>
        </span>
        <a href="${mypageUrl}"> <i class="xi-user"></i>마이페이지 </a>
        <a href="${logoutUrl}"><i class="xi-log-out"></i>로그아웃 </a>
    </c:if>
            </nav>
         </section>
        <nav>
            <ul>
                <li class="dropdown">
                    <div class="dropdown-menu">Menu1</div>
                    <div class="dropdown-content">
                        <a href="#">Menu1-1</a>
                        <a href="#">Menu1-2</a>
                        <a href="#">Menu1-3</a>
                        <a href="#">Menu1-4</a>
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown-menu">Menu2</div>
                    <div class="dropdown-content">
                        <a href="#">Menu2-1</a>
                        <a href="#">Menu2-2</a>
                        <a href="#">Menu2-3</a>
                        <a href="#">Menu2-4</a>
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown-menu">Menu3</div>
                    <div class="dropdown-content">
                        <a href="#">Menu3-1</a>
                        <a href="#">Menu3-2</a>
                        <a href="#">Menu3-3</a>
                        <a href="#">Menu3-4</a>
                    </div>
                </li>
                <li class="dropdown">
                    <div class="dropdown-menu">Menu4</div>
                    <div class="dropdown-content">
                        <a href="#">Menu4-1</a>
                        <a href="#">Menu4-2</a>
                        <a href="#">Menu4-3</a>
                        <a href="#">Menu4-4</a>
                    </div>
                </li>
            </ul>
        </nav>
    </jsp:attribute>
    <jsp:attribute name="footer">
        <h1></h1>
    </jsp:attribute>
    <jsp:body>
        <jsp:doBody />
    </jsp:body>
</layout:common>