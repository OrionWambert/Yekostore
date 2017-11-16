<%-- 
    Document   : AllUser
    Created on : 12 nov. 2017, 23:56:03
    Author     : HP Notebook
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All User</title>
    </head>
    <body>
        <jsp:include page="headerSelect.jsp" />

        <br><br><br><br><br>
        <div class="content-grid mdl-grid"> 
            <h3>Liste des Utilisateurs</h3>
            <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone ">
                <table class="mdl-data-table mdl-js-data-table wid">

                    <thead>
                    <th class="mdl-data-table__cell--non-numeric">Nom</th>
                    <th class="mdl-data-table__cell--non-numeric">Prenom</th>
                    <th class="mdl-data-table__cell--non-numeric">Username</th>
                    <th class="mdl-data-table__cell--non-numeric">Email</th>
                    <th class="mdl-data-table__cell--non-numeric">CompType</th>
                    </thead>
                    <tbody>
                        <c:forEach items="${AllUser}" var="u" varStatus="i">
                            <tr>
                                <td class="mdl-data-table__cell--non-numeric">${u.name}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.firstname}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.username}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.email}</td>
                                <td class="mdl-data-table__cell--non-numeric">${u.compType=="A"?"Administrateur":"Utilisateur"}</td>
                            </tr>
                        </c:forEach>

                    </tbody>

                </table>

            </div>
        </div>

    </body>
</html>
