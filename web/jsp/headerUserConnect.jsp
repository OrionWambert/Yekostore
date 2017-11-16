<%-- 
    Document   : headerUserConnect
    Created on : 9 nov. 2017, 14:34:35
    Author     : Orion WAMBERT
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header" >
    <header class="mdl-layout__header">
        <div class="mdl-layout__header-row" >
            <span class="mdl-layout-title"><a href="<c:url value="/" />">YEKOSTORE</a></span>
            <div class="mdl-layout-spacer"></div>
            <nav class="mdl-navigation">
                <a href="<c:url value="/UserPanel" />" class="mdl-navigation__link link_style">Profile</a>

                <form method="POST" action="<c:url value="/signIn" />">
                    <button name="btn-signIn" value="deconnexion" class="mdl-button mdl-js-button">
                        Logout
                    </button>
                </form>

            </nav>

        </div>

    </header>
</div>