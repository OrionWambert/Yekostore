<%-- 
    Document   : ArticleUpdate
    Created on : 16 nov. 2017, 17:41:02
    Author     : HP Notebook
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="headerSelect.jsp" />

        <br><br><br><br><br>

        <div class="content-grid mdl-grid">
            <form class="to-top" method="POST" action="<c:url value="/UpdateArticle" />">
                  <h3>Modifier un article</h3>

                <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                    <input type="text" value="${articleUp.nom}"class="mdl-textfield__input" name="nom" >										
                    <label class="mdl-textfield__label" >Nom</label>


                </div>

                <br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">

                    <textarea name="description" class="mdl-textfield__input">${articleUp.description}</textarea>
                    <label class="mdl-textfield__label" >Description</label>

                </div>
                <br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield mdl-textfield--floating-label">
                    <select name="categorie" class="mdl-textfield__input" >
                        <option value=""></option>
                        <option value="1">Livre</option>
                        <option value="2">Machine</option>
                        <option value="3">Meuble</option>
                        <option value="4">Aliment</option>
                        <option value="5">Cosmétique</option>
                        <option value="6">Vêtement</option>
                        <option value="7">Maroquinerie</option>
                        <option value="8">Medical</option>
                        <option value="9">Ustensile</option>
                        <option value="10">Boisson</option>
                    </select>
                    <label class="mdl-textfield__label" >Catégorie</label>
                    

                </div>

                <br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <input type="number" class="mdl-textfield__input" value="${articleUp.prix}" name="prix" >
                    <label class="mdl-textfield__label">Prix</label>
                </div><br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <input type="number" class="mdl-textfield__input" value="${articleUp.quantite}" name="quantite" >
                    <label class="mdl-textfield__label">quantité</label>

                </div><br>
                <button name="btn-UpArt"  type="submit" class="mdl-button mdl-button--raised mdl-button--colored mdl-js-button mdl-js-ripple-effect link_style">Modifier</button>

            </form> 

        </div>
    </body>
</html>
