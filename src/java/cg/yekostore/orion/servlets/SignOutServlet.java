/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.servlets;
import cg.yekostore.orion.beans.User;
import cg.yekostore.orion.dao.BddDaoUser;
import java.io.IOException;
import java.sql.SQLException;
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
@WebServlet(value = "/signOut")
public class SignOutServlet extends HttpServlet {

    HttpSession session;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        session = req.getSession();

        if (session.getAttribute("user") != null) {
                this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }else{
            
        this.getServletContext().getRequestDispatcher("/jsp/signOut.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User(req.getParameter("name"), req.getParameter("firstname"),
                req.getParameter("username"), req.getParameter("email"), req.getParameter("password"));
        user.setCompType("U");
        session = req.getSession();
        session.setAttribute("user", user);

        
            BddDaoUser.initConnexion();
            BddDaoUser.InsertUser(user);
       
        if (user.getCompType().equalsIgnoreCase("U")) {

            this.getServletContext().getRequestDispatcher("/jsp/UserPanel.jsp").forward(req, resp);
        } else {
            this.getServletContext().getRequestDispatcher("/jsp/AdminPanel.jsp").forward(req, resp);

        }
    }

}
