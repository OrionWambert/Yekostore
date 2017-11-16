/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.servlets;

import cg.yekostore.orion.beans.Article;
import cg.yekostore.orion.dao.BddConnect;
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
@WebServlet(value = "/UpdateArticle")
public class UpdateArticleServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Article art = new Article();
        art.setNom(req.getParameter("nom"));
        art.setDescription(req.getParameter("description"));
        art.setCategorie(req.getParameter("categorie"));
        art.setPrix(req.getParameter("prix"));
        art.setQuantite(req.getParameter("quantite"));
        
        BddConnect.initConnexion();
        BddDaoArticle.UpDateArticle(art, req);
        System.out.println(req.getParameter("idArt"));
        BddDaoArticle.selectArticle(req);
        this.getServletContext().getRequestDispatcher("/jsp/AdminPanel.jsp").forward(req, resp);
        
    }
    
}
