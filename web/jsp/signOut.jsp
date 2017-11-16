<%-- 
    Document   : signOut
    Created on : 9 nov. 2017, 13:20:51
    Author     : Orion WAMBERT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscription</title>

    </head>
    <body>
        <jsp:include page="headerSelect.jsp" />

        <div class="content-grid mdl-grid">


            <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                <form class="to-top" method="POST" action="<c:url value="/signOut" />">
                    <h3>Inscription</h3>

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                        <input type="text" class="mdl-textfield__input" name="name" >										
                        <label class="mdl-textfield__label" >Name</label>


                    </div>

                    <br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                        <input type="text" class="mdl-textfield__input" name="firstname" >										
                        <label class="mdl-textfield__label" >FirstName</label>


                    </div>
                    <br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                        <input type="text" class="mdl-textfield__input" name="username" >										
                        <label class="mdl-textfield__label" >Username</label>
                    </div>
                    <br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input type="email" class="mdl-textfield__input"  name="email" >
                        <label class="mdl-textfield__label">Email</label>
                    </div><br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input type="password" class="mdl-textfield__input"  name="password" >
                        <label class="mdl-textfield__label">Password</label>

                    </div><br>
                    <button name="btn-signOut" type="submit" class="mdl-button mdl-button--raised mdl-button--colored mdl-js-button mdl-js-ripple-effect link_style">sign Out</button>

                </form>

            </div>
        </div>
    </body>
</html>
