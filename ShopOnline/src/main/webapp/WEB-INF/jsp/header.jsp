<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:set var="sessionUser" value="${sessionScope.sessionUser }"/>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
    <h5 class="my-0 mr-md-auto font-weight-normal"><a href="/" class="navbar-brand text-dark">iQuest - Advanced Frameworks - 2018</a></h5>
    <nav class="my-2 my-md-0 mr-md-3"><a class="p-2 text-dark" href="/cart/">Cart <i
            class="fas fa-shopping-cart"></i></a></nav>

    <c:if test="${empty sessionUser.id}">
        <a class="btn btn-outline-primary" href="/user/login">Login</a>
    </c:if>
    <c:if test="${not empty sessionUser.id}">
        <h6 class="mr-md-3 d-none d-md-block">|</h6>
        <h6 class="pr-2 my-2 my-md-0">Welcome ${sessionUser.name}</h6>
        <a class="btn btn-outline-primary" href="/user/logout">Logout</a>
    </c:if>

</div>