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
 * @author HP Notebook
 */
@WebServlet(value = "/AddAdmin")
public class AddAdminServlet extends HttpServlet {

    private HttpSession session;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        session = req.getSession();
        if (session.getAttribute("user") != null) {
            this.getServletContext().getRequestDispatcher("/jsp/AddAdmin.jsp").forward(req, resp);
        } else {
            this.getServletContext().getRequestDispatcher("/jsp/signIn.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User(req.getParameter("name"),
                 req.getParameter("firstname"),
                 req.getParameter("username"),
                 req.getParameter("email"),
                 req.getParameter("password"));
        user.setCompType("A");
        session = req.getSession();
        

        BddDaoUser.initConnexion();
        BddDaoUser.InsertUser(user);
        this.getServletContext().getRequestDispatcher("/jsp/AdminPanel.jsp").forward(req, resp);
    }

}
