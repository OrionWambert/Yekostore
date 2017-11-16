/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.servlets;

import cg.yekostore.orion.dao.BddConnect;
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
 * @author HP Notebook
 */
@WebServlet(value = "/articleAction")
public class ArticleActionServlet extends HttpServlet {
    
    private HttpSession session;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BddConnect.initConnexion();
        
        if (req.getParameter("btn-signIn").equalsIgnoreCase("supprimer")) {
            BddDaoArticle.DeleteArticle(Integer.parseInt(req.getParameter("idArt")));
            
        } else {
            session = req.getSession();
            BddDaoArticle.idDetect(req.getParameter("idArt"));
            BddDaoArticle.initConnexion();
            BddDaoArticle.SelectArticle(Integer.parseInt(req.getParameter("idArt")), req);
            this.getServletContext().getRequestDispatcher("/jsp/ArticleUpdate.jsp").forward(req, resp);
            
        }
        
        BddDaoArticle.selectArticle(req);
        this.getServletContext().getRequestDispatcher("/jsp/AdminPanel.jsp").forward(req, resp);
    }
    
}
