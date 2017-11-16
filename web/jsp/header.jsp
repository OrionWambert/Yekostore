<%-- 
    Document   : header
    Created on : 9 nov. 2017, 13:15:13
    Author     : Orion WAMBERT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="assets/css/material.css">

<script type="text/javascript" src="assets/js/material.min.js"></script>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header ">
    <header class="mdl-layout__header">
        <div class="mdl-layout__header-row">
            <span class="mdl-layout-title"><a href="<c:url value="/" />">YEKOSTORE</a></span>
            <div class="mdl-layout-spacer"></div>
            <nav class="mdl-navigation">
                <a href="<c:url value="/signIn" />" class="mdl-navigation__link link_style">CONNEXION</a>
                <a href="<c:url value="/signOut" />" class="mdl-navigation__link link_style">INSCRIPTION</a>
            </nav>
        </div>
    </header>
</div>
            