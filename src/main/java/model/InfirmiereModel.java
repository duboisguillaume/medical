package model;

import Entity.InfirmiereEntity;
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

}
