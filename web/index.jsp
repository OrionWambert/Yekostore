<%-- 
    Document   : index
    Created on : 9 nov. 2017, 12:46:08
    Author     : HP Notebook
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Accueil</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="jsp/headerSelect.jsp" />

        <br><br><br><br><br>

        <div class="content-grid mdl-grid"> 

            <c:forEach items="${AllArticle}" var="u" varStatus="i">
                <div class="mdl-cell  mdl-cell--4-col">
                    <div class="features_items"><!--features_items-->
                        <h2 class="title text-center">${u.nom}</h2>
                        <div class="mdl-cell  mdl-cell--9-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/girl2.jpg" alt="" />
                                        <h2>${u.prix}$</h2>
                                        <p>${u.nom}</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                    <div class="product-overlay">
                                        <div class="overlay-content">
                                            <h2>${u.prix}$</h2>
                                            <p>${u.description}</p>
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
