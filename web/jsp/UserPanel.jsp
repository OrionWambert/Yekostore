<%-- 
    Document   : UserPanel
    Created on : 9 nov. 2017, 20:23:54
    Author     : Orion WAMBERT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
        <jsp:include page="headerSelect.jsp" />

        <br><br><br><br><br>
        <div class=" content-grid mdl-grid taille">
            <div class="bg center mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-cell--2-col-phone  mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title bg2">
                    <span class="mdl-card__title center"><h3>Compte</h3></span>


                </div>

                <div class=" mdl-card__supporting-text fontUserPanel">
                    Nom:<span class="styling italic">${user.name}</span><br>
                    Prenom:<span class="styling italic">${user.firstname}</span><br>
                    Username:<span class="styling italic">${user.username}</span><br>
                    Email:<span class="styling italic">${user.email}</span>
                </div>
            </div>

            <div class="bg3 mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-cell--2-col-phone  mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title long bg2">
                    <span class="mdl-card__title "><h3>Panier</h3></span>
                </div>
                <div class="mdl-card__supporting-text fontUserPanel">
                    Votre Panier ne contient actuellement <a href="#">aucun</a> Articles
                </div>
            </div>
        </div>
        <br><br><br>
        <div class="content-grid mdl-grid">
            <div class="mdl-cell mdl-cell--12-col mld-cell--8-col-tablet mdl-cell-4-col-phone">
                <form class="to-top" method="POST" action="<c:url value="/UserPanel" />">
                    <h3>Modifier son profile</h3>

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                        <input type="text" value="${user.name}" class="mdl-textfield__input" name="name" >										
                        <label class="mdl-textfield__label" >Name</label>


                    </div>

                    <br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                        <input type="text" value="${user.firstname}" class="mdl-textfield__input" name="firstname" >										
                        <label class="mdl-textfield__label" >FirstName</label>


                    </div>
                    <br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                        <input type="text" value="${user.username}" class="mdl-textfield__input" name="username" >										
                        <label class="mdl-textfield__label" >Username</label>
                    </div>
                    <br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input type="email" value="${user.email}" class="mdl-textfield__input"  name="email" >
                        <label class="mdl-textfield__label">Email</label>
                    </div><br>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input type="password" class="mdl-textfield__input"  name="password" required>
                        <label class="mdl-textfield__label">Password</label>

                    </div><br>
                    <button name="btn-update" value="update" type="submit" class="mdl-button mdl-button--raised mdl-button--colored mdl-js-button mdl-js-ripple-effect link_style">sign Out</button>

                </form>
            </div>

        </div>








    </body>
</html>
