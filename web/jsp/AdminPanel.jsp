<%-- 
    Document   : AdminPanel
    Created on : 9 nov. 2017, 21:18:59
    Author     : Orion WAMBERT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administration</title>
    </head>
    <body>
        <jsp:include page="headerSelect.jsp" />

        <br><br><br><br><br>
        <div class=" content-grid mdl-grid taille">
            <div class="bg center mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone  mdl-card mdl-shadow--2dp">
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


            <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone ">
                <table class="mdl-data-table mdl-js-data-table wid">

                    <thead>
                    <th class="mdl-data-table__cell--non-numeric">Nom</th>
                    <th class="mdl-data-table__cell--non-numeric">Description</th>
                    <th class="mdl-data-table__cell--non-numeric">Categorie</th>
                    <th class="mdl-data-table__cell--non-numeric">prix</th>
                    <th class="mdl-data-table__cell--non-numeric">quantite</th>
                    <th class="mdl-data-table__cell--non-numeric">date de publication</th>
                    <th class="mdl-data-table__cell--non-numeric">supprimer</th>
                    </thead>
                    <tbody>

                        <c:forEach items="${AllArticle}" var="u" varStatus="i">
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">${u.nom}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.description}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.nomC}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.prix}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.quantite}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.date_publication}</td>

                                <td class="mdl-data-table__cell--non-numeric">

                                    <form method="POST" action="<c:url value="/articleAction" />">

                                        <input type="hidden" name="idArt" value="${u.id}">
                                        
                                        <button name="btn-signIn" type="submit" value="modifier" class="mdl-button mdl-button--raised mdl-button--colored mdl-js-button mdl-js-ripple-effect link_style">modifier</button>

                                        <button name="btn-signIn" value="supprimer" type="submit" class="mdl-button mdl-button--raised mdl-button--colored mdl-js-button mdl-js-ripple-effect link_style">supprimer</button>


                                    </form>
                                </td>


                            </tr>
                        </c:forEach>

                    </tbody>

                </table>

            </div>

        </div>



    </body>
</html>
