<%-- 
    Document   : headerSelect
    Created on : 9 nov. 2017, 20:38:58
    Author     : Orion WAMBERT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="assets/css/material.css">

<script type="text/javascript" src="assets/js/material.min.js"></script>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<c:choose>
    <c:when test="${user.compType=='U'}">     
        <jsp:include page="headerUserConnect.jsp"/>
    </c:when>
    <c:when test="${user.compType=='A'}"> <jsp:include page="headerAdminConnect.jsp"/></c:when>
    <c:otherwise><jsp:include page="header.jsp"/></c:otherwise>
</c:choose>