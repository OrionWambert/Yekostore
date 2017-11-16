/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.dao;

import cg.yekostore.orion.beans.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Orion WAMBERT
 */
public class BddDaoUser extends BddConnect {

    private static String nom;
    private static User userC = null;

    private static String prenom;
    private static String username;
    private static String email;
    private static String CompType;
    private static String password;
    private static HttpSession session;
    private static ArrayList<User> AllUser;

    public static void InsertUser(User user) {
        requete = "INSERT INTO usertbl(nom,prenom,username,email,CompType,password) "
                + "VALUES('" + user.getName() + "','" + user.getFirstname() + "','" + user.getUsername() + "','" + user.getEmail() + "','" + user.getCompType()
                + "','" + user.getPassword() + "')";

        try {
            stm.executeUpdate(requete);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static User ConnectUser(User user) {

        username = "";

        password = "";

        requete = "SELECT * FROM usertbl WHERE username='"
                + user.getLogin() + "' OR email='"
                + user.getLogin() + "' AND password='"
                + user.getPassword() + "'";

        try {
            ResultSet rst = stm.executeQuery(requete);
            while (rst.next()) {
                nom = rst.getString("nom");
                System.out.println(nom);
                prenom = rst.getString("prenom");
                System.out.println(prenom);
                username = rst.getString("username");
                email = rst.getString("email");
                CompType = rst.getString("CompType");
                password = rst.getString("password");

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        userC = new User(nom, prenom, username, email, password);
        userC.setCompType(CompType);
        return userC;
    }

    public static void updateUser(HttpServletRequest req, User user) {
        session = req.getSession();
        User userSession = (User) session.getAttribute("user");
        User userUpdate = new User();
        userUpdate.setCompType(userSession.getCompType());
        try {
            if (!(userSession.getName().equals(user.getName()))) {
                requete = "UPDATE usertbl set nom='"
                        + user.getName() + "' WHERE username='"
                        + userSession.getUsername() + "'";
                userUpdate.setName(user.getName());
                stm.executeUpdate(requete);
            } else {
                userUpdate.setName(userSession.getName());
            }
            if (!(userSession.getFirstname().equals(user.getFirstname()))) {
                requete = "UPDATE usertbl set prenom='"
                        + user.getFirstname()
                        + "' WHERE username='"
                        + userSession.getUsername() + "'";
                userUpdate.setFirstname(user.getFirstname());
                stm.executeUpdate(requete);
            } else {
                userUpdate.setFirstname(userSession.getFirstname());

            }
            if (!(userSession.getUsername().equals(user.getUsername()))) {
                requete = "UPDATE usertbl set username='"
                        + user.getUsername()
                        + "' WHERE username='"
                        + userSession.getUsername() + "'";
                userUpdate.setUsername(user.getUsername());
            } else {
                userUpdate.setUsername(userSession.getUsername());

            }
            if (!(userSession.getEmail().equals(user.getEmail()))) {

                requete = "UPDATE usertbl set email='"
                        + user.getEmail()
                        + "' WHERE username='"
                        + userSession.getUsername() + "'";
                userUpdate.setEmail(user.getEmail());
                stm.executeUpdate(requete);

            } else {
                userUpdate.setEmail(userSession.getEmail());

            }
            if (!(userSession.getPassword().equals(user.getPassword()))) {
                requete = "UPDATE usertbl set password='"
                        + user.getPassword()
                        + "' WHERE username='"
                        + userSession.getUsername() + "'";
                userUpdate.setPassword(user.getPassword());
                stm.executeUpdate(requete);
            } else {
                userUpdate.setPassword(userSession.getPassword());

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        session.setAttribute("user", userUpdate);

    }

    public static void SelectAllUser(HttpServletRequest req) {
        session = req.getSession();
        requete = "SELECT * FROM usertbl";
        AllUser = new ArrayList<>();
        try {
            ResultSet rst = stm.executeQuery(requete);
            while (rst.next()) {
                nom = rst.getString("nom");
                prenom = rst.getString("prenom");
                username = rst.getString("username");
                email = rst.getString("email");
                CompType = rst.getString("CompType");
                User user = new User();
                user.setName(nom);
                user.setFirstname(prenom);
                user.setUsername(username);
                user.setEmail(email);
                user.setCompType(CompType);
                AllUser.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        session.setAttribute("AllUser", AllUser);
    }

}
