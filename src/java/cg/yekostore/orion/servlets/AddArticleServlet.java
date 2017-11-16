/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.servlets;

import cg.yekostore.orion.beans.Article;
import cg.yekostore.orion.dao.BddDaoArticle;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP Notebook
 */
@WebServlet(value = "/AddArticle")
public class AddArticleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/jsp/AddArticle.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Article article = new Article(req.getParameter("nom"),
                req.getParameter("description"),
                req.getParameter("categorie"),
                req.getParameter("prix"),
                req.getParameter("quantite"));
        BddDaoArticle.initConnexion();
        BddDaoArticle.insertArticle(article);
        this.getServletContext().getRequestDispatcher("/jsp/AddArticle.jsp").forward(req, resp);

    }

}
