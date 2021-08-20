package model;

import Entity.InfirmiereEntity;
import Entity.PatientEntity;

import java.util.List;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class InfirmiereModel extends AccessDB{

	public InfirmiereModel() {
		super();
	}

	public List<InfirmiereEntity> fetchAllInfirmiere() throws Exception {

		List<InfirmiereEntity> infirmieres = new ArrayList<InfirmiereEntity>();

		Statement statement = this.connexion().createStatement();
		ResultSet result;

		try {
			result = statement.executeQuery("SELECT * FROM infirmiere");
			while(result.next()) {
				if(result.getInt("status")!=0) {
					infirmieres.add(new InfirmiereEntity(
							result.getInt("id"),
							result.getInt("adresse_id"),
							result.getInt("numeroProfessionnel"),
							result.getString("nom"),
							result.getString("prenom"),
							result.getInt("telPro"),
							result.getInt("telPerso")
							));	
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.connexion().close();
		}

		return infirmieres;
	}
	
	public void addInfirmiere( int numeroProfessionnel, String nom, String prenom, int telPro, int telPerso) throws Exception{
		
		InfirmiereEntity patient = new InfirmiereEntity();
		
		Statement statement = this.connexion().createStatement();
		
		try {
			statement.executeUpdate("INSERT INTO infirmiere (adresse_id, numeroProfessionnel, nom, prenom, telPro, telPerso) VALUES ( 4, " + numeroProfessionnel + ", '" + nom + "', '" + prenom + "', " + telPro + ", " + telPerso + " )");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.connexion().close();
		}
	}

}
