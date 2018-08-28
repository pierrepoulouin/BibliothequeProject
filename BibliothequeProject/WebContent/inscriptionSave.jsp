<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
try {
//On crée nos variables pour stocker les données
String nom= request.getParameter("nom");
String prenom= request.getParameter("prenom");
String email= request.getParameter("email");
String mdp= request.getParameter("mdp");

//Chargement du driver jdbc
Class.forName("com.mysql.jdbc.Driver");

//Création des variables à la database Bibliotheque
        String url = "jdbc:mysql://localhost:3306/Bibliotheque";
        String user = "root";
        String pwd= "Pierrebing59";
        
        //Création d'un objet con de la classe Connection
        
        Connection con=DriverManager.getConnection(url, user, pwd);

        //Creation de la requete sql INSERT
        String sql = "insert into inscriptions values(?,?,?,?)";
        
        //Statement pour les requetes SELECT
        //PreparedStatement pour les instructions SQL : INSERT, UPDATE, DELETE
        PreparedStatement ps = con.prepareStatement(sql);
        
        ps.setString(1,nom);
        ps.setString(2,prenom);
        ps.setString(3,email);
        ps.setString(4,mdp);
        
        //methode qui execute la requete SQL et qui retourne un int
        int s= ps.executeUpdate();
        
        if(s>0){
            %>
<jsp:forward page="inscription.jsp"></jsp:forward>
<% 
            }
            else{
            out.print("sorry!please fill correct detail and try again" );
            }
    }
    catch(Exception e){e.printStackTrace();
    out.print("sorry!please fill correct detail and try again" );
    }

    %>