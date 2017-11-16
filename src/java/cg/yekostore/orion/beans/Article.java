/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cg.yekostore.orion.beans;

/**
 *
 * @author Orion WAMBERT
 */
public class Article {

    private String date_publication;
    private String nomC;
    private int id;
    private String nom;
    private String description;
    private String categorie;
    private String prix;
    private String quantite;
    private int idC;
    public Article() {
    }

    public Article(String nom, String description, String categorie, String prix, String quantite) {
        this.nom = nom;
        this.description = description;
        this.categorie = categorie;
        this.prix = prix;
        this.quantite = quantite;

    }

    public void setIdC(int idC) {
        this.idC = idC;
    }

    public int getIdC() {
        return idC;
    }
    
    public String getDate_publication() {
        return date_publication;
    }

    public String getNomC() {
        return nomC;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getDescription() {
        return description;
    }

    public String getCategorie() {
        return categorie;
    }

    public String getPrix() {
        return prix;
    }

    public String getQuantite() {
        return quantite;
    }

    public void setDate_publication(String date_publication) {
        this.date_publication = date_publication;
    }

    public void setNomC(String nomC) {
        this.nomC = nomC;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setDescription(String Description) {
        this.description = Description;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }

    public void setQuantite(String quantite) {
        this.quantite = quantite;
    }
    
    

}
