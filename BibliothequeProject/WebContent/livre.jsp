<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="biblio.LivresModel"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>

<%@ page import="com.mysql.jdbc.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nos Livres</title>
</head>
<body>
	<% try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/Bibliotheque";
			String user = "root";
			String pwd = "Pierrebing59";
			
			Connection cn = (Connection) DriverManager.getConnection(url, user, pwd);
			
			Statement st = (Statement) cn.createStatement();
			
			String sql = "SELECT * FROM livres";
			
			ResultSet result = st.executeQuery(sql);
			
			ArrayList<LivresModel> listeLivres = new ArrayList<LivresModel>();
			
			while(result.next()) {
				
				LivresModel l = new LivresModel();
				
				l.setTitre(result.getString("titre"));
				l.setAuteur(result.getString("auteur"));
				l.setEditeur(result.getString("editeur"));
				
				listeLivres.add(l);
				
			}
			out.print("<ol>");
			for(int i = 0; i <listeLivres.size(); i++) {
				out.print("<li>"+listeLivres.get(i).getTitre());
				out.print(" " +listeLivres.get(i).getAuteur());
				out.print(" " +listeLivres.get(i).getEditeur());
				out.print("</li>");
			}
			out.print("</ol>");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}




 %>
</body>
</html>