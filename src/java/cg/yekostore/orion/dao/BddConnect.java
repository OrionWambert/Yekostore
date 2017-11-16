/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Orion WAMBERT
 */
public class BddConnect {
    protected static HttpSession session;
    protected static Connection connexion = null;
    protected static Statement stm = null;
    protected static String username = "root";
    protected static String url = "jdbc:mysql://localhost:3306/yekostore";
    protected static String password = "";
    protected static String requete = "";

    public static void initConnexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connexion = DriverManager.getConnection(url, username, password);
            stm = connexion.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
