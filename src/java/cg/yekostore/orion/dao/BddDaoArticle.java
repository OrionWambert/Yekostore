/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.dao;

import cg.yekostore.orion.beans.Article;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author HP Notebook
 */
public class BddDaoArticle extends BddConnect {

    private static String idDet;

    public static void insertArticle(Article article) {

        requete = "INSERT INTO articletbl(nom,description,idCategorie,prix,quantite)"
                + " VALUES('"
                + article.getNom()
                + "','"
                + article.getDescription()
                + "','" + article.getCategorie() + "','" + article.getPrix() + "','" + article.getQuantite() + "')";
        try {
            stm.executeUpdate(requete);
        } catch (SQLException ex) {
            Logger.getLogger(BddDaoArticle.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void selectArticle(HttpServletRequest req) {
        requete = "SELECT * FROM categorietbl INNER JOIN articletbl ON categorietbl.idC=articletbl.idCategorie";

        ResultSet rst;
        try {
            rst = stm.executeQuery(requete);

            ArrayList<Article> artList = new ArrayList<>();
            while (rst.next()) {
                Article art = new Article();

                art.setId(rst.getInt("id"));
                art.setNom(rst.getString("nom"));
                art.setDescription(rst.getString("description"));
                art.setNomC(rst.getString("nomC"));
                art.setPrix(rst.getString("prix"));
                art.setQuantite(rst.getString("quantite"));
                art.setDate_publication(rst.getString("date_publication"));
                artList.add(art);
                session = req.getSession();

            }

            session.setAttribute("AllArticle", artList);

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static void DeleteArticle(int idArt) {
        requete = "DELETE FROM articletbl WHERE id='" + idArt + "'";
        try {
            stm.executeUpdate(requete);
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public static void SelectArticle(int idArt, HttpServletRequest req) {
        requete = "SELECT * FROM categorietbl INNER JOIN articletbl ON categorietbl.idC=articletbl.idCategorie WHERE id='" + idArt + "' ";

        ResultSet rst;
        try {
            rst = stm.executeQuery(requete);
            Article article = new Article();

            while (rst.next()) {

                article.setId(rst.getInt("id"));
                article.setNom(rst.getString("nom"));
                article.setDescription(rst.getString("description"));
                article.setIdC(rst.getInt("idC"));
                article.setPrix(rst.getString("prix"));
                article.setQuantite(rst.getString("quantite"));

            }
            session = req.getSession();
            session.setAttribute("articleUp", article);

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static void idDetect(String id) {
        idDet = id;
    }

    public static void UpDateArticle(Article art, HttpServletRequest req) {

        session = req.getSession();

        requete = "UPDATE articletbl set nom='"
                + art.getNom() + "',description='"
                + art.getDescription()
                + "',idCategorie='"
                + art.getCategorie()
                + "',prix='" + art.getCategorie()
                + "',quantite='" + art.getQuantite() + "' WHERE id='" + idDet + "'";

        try {
            stm.executeUpdate(requete);
        } catch (SQLException ex) {
            Logger.getLogger(BddDaoArticle.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
