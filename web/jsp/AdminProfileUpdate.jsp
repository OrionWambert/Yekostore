<%-- 
    Document   : AdminProfileUpdate
    Created on : 12 nov. 2017, 23:33:13
    Author     : HP Notebook
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
    </head>
    <body>
        <jsp:include page="headerSelect.jsp" />

        <br><br><br><br><br>

        <div class="content-grid mdl-grid">
            <form class="to-top" method="POST" action="<c:url value="/UpdateProfile" />">
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

    </body>
</html>
