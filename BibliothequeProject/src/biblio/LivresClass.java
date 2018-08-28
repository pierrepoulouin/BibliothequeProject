package biblio;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class LivresClass {

	public static Connection openConnection(Statement st) {
		Connection cn = null;
		String url = "jdbc:mysql://localhost/Bibliotheque";
		String user = "root";
		String pwd = "Pierrebing59";

		try {
			//récupération du driver
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver ok !");
			//recupération de la connection
			cn =(Connection) DriverManager.getConnection(url, user, pwd);
		}
		//ajout du catch pour les exceptions
		catch(SQLException e) {
			e.printStackTrace();
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return cn;
	}
	
public static Statement selectAll(Connection cn) {
		
		Statement st = null;

		try {
			//Création d'un statement
			st = (Statement) cn.createStatement();
			//Création de la requete
			String sql = "SELECT * FROM livres";

			//Exécution de la requete
			ResultSet result = (ResultSet) st.executeQuery(sql);

			//recuperer les infos pour azfficher le nom de chaque artiste

			String titre;
			String auteur;
			String editeur;

			//recupération de toutes les infos
			while(result.next()) {
				
				titre = result.getString("titre");
				auteur = result.getString("auteur");
				editeur = result.getString("editeur");
				System.out.println(auteur + "a ecrit le livre" +titre + "édité par" + editeur);

			}
		}
		catch(SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return st;
	}
public static void closeConnection(Connection cn, Statement st) {

	//Fermeture de la connection
	try {
		cn.close();
		st.close();
	}
	catch(SQLException e) {
		e.printStackTrace();
	}
}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Connection cn = null;
		Statement st = null;


		cn = openConnection(st);
		st = selectAll(cn);
		closeConnection(cn, st);
	}

}
