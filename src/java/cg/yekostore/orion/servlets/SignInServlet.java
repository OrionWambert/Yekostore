/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.servlets;

import cg.yekostore.orion.beans.User;
import cg.yekostore.orion.dao.BddDaoUser;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Orion WAMBERT
 */
@WebServlet(value = "/signIn")
public class SignInServlet extends HttpServlet {

    HttpSession session;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        session = req.getSession();
        if (session.getAttribute("user") != null) {
            this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        } else {

            this.getServletContext().getRequestDispatcher("/jsp/signIn.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        session = req.getSession();
            User user = new User();
            user.setLogin(req.getParameter("login"));
            user.setPassword(req.getParameter("password"));
        if (req.getParameter("btn-signIn").equalsIgnoreCase("connexion")) {
            
            BddDaoUser.initConnexion();

            User userC = BddDaoUser.ConnectUser(user);
            if (userC.getName() != null && userC.getPassword() != null) {

                session.setAttribute("user", userC);
                System.out.println(userC.getName());
                this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
            } else {
                req.setAttribute("message", "identifiant ou mot de passe Incorect");
                this.getServletContext().getRequestDispatcher("/jsp/signIn.jsp").forward(req, resp);
            }

        } else {
            session.removeAttribute("user");
            this.getServletContext().getRequestDispatcher("/jsp/signIn.jsp").forward(req, resp);
        }

    }

}
