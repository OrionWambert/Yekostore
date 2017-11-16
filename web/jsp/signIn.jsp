<%-- 
    Document   : signIn
    Created on : 9 nov. 2017, 21:13:06
    Author     : Orion WAMBERT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion</title>
    </head>
    <body>
        <jsp:include page="headerSelect.jsp"/>
        <div class="content-grid mdl-grid">


            <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                <form class="to-top" method="POST" action="<c:url value="/signIn" />">
                    <h3>Connexion ${user.nom}</h3>

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                        <input type="text" class="mdl-textfield__input" name="login" >										
                        <label class="mdl-textfield__label" >Username Or Email</label>


                    </div>
                    <br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input type="password" class="mdl-textfield__input"  name="password" >
                        <label class="mdl-textfield__label">Password</label>

                    </div><br>
                    <button name="btn-signIn" value="connexion" type="submit" class="mdl-button mdl-button--raised mdl-button--colored mdl-js-button mdl-js-ripple-effect link_style">sign Out</button>

                </form>
                    <p class="colorR">${message==null?"":message}</p>

            </div>
        </div>
    </body>
</html>
