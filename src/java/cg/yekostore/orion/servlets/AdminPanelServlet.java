/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.servlets;

import cg.yekostore.orion.dao.BddDaoArticle;
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
@WebServlet(value = "/AdminPanel")
public class AdminPanelServlet extends HttpServlet {

    HttpSession session;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        session = req.getSession();

        if (session.getAttribute("user") == null) {
            this.getServletContext().getRequestDispatcher("/jsp/signIn.jsp").forward(req, resp);
        }
        BddDaoArticle.initConnexion();
        BddDaoArticle.selectArticle(req);
        this.getServletContext().getRequestDispatcher("/jsp/AdminPanel.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

}
