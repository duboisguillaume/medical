package model;
import Entity.PatientEntity;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class PatientModel extends AccessDB {

	public PatientModel() {
		super();
	}


	public List<PatientEntity> fetchAllPatient() throws Exception {

		List<PatientEntity> patients = new ArrayList<PatientEntity>();

		Statement statement = this.connexion().createStatement();
		ResultSet result;

		try {
			result = statement.executeQuery("SELECT * FROM patient");
			while(result.next()) {
				System.out.println(result.getInt("status"));
				if(result.getInt("status")!=0) {
					patients.add(new PatientEntity(
							result.getInt("id"),
							result.getInt("adresse_id"),
							result.getInt("infirmiere_id"),
							result.getString("nom"),
							result.getString("prenom"),
							result.getString("dateDeNaissance"),
							result.getString("sexe"),
							result.getInt("numeroSecuriteSocial")
							));	
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.connexion().close();
		}

		return patients;
	}

	public PatientEntity onePatient(int id) throws Exception {

		PatientEntity patient = new PatientEntity();
		
		Statement statement = this.connexion().createStatement();
		ResultSet result;
		
		try {
			result = statement.executeQuery("SELECT * FROM patient WHERE id=" + id);
			while(result.next()) {
				patient.setId(id);
				patient.setAdresse_id(result.getInt("id"));
				patient.setInfirmiere_id(result.getInt("infirmiere_id"));
				patient.setNom(result.getString("nom"));
				patient.setPrenom(result.getString("prenom"));
				patient.setDateDeNaissance(result.getString("dateDeNaissance"));
				patient.setSexe(result.getString("sexe"));
				patient.setNumeroSecuriteSocial(result.getInt("numeroSecuriteSocial"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.connexion().close();
		}
		
		return patient;
	}
	
	public void addPatient(int id, String nom, String prenom, String sexe, String dateDeNaissance, int numeroSecuriteSocial) throws Exception {
		
		
		try {
			String query = "INSERT INTO Users (nom, prenom, sexe, dateDeNaissance, numeroSecuriteSocial ) VALUES (?, ?, ?, ?,?)";
			
			PreparedStatement pstmt = this.connexion().prepareStatement(query);
			pstmt.setString(1,nom);
			pstmt.setString(2,prenom);
			pstmt.setString(3,sexe);
			pstmt.setString(4,dateDeNaissance);
			pstmt.setInt(5,numeroSecuriteSocial);
			System.out.println("HEREEEE");
			pstmt.executeUpdate();
			pstmt.close();
		}catch (Exception e){
			e.printStackTrace();	
		}finally {
			this.connexion().close();
		}
		
		
	
		
}
	
	public void updatePatient(int id, String nom, String prenom, String sexe, String dateDeNaissance, int numeroSecuriteSocial) throws Exception {

		PatientEntity patient = new PatientEntity();
		
		Statement statement = this.connexion().createStatement();
		
		try {
			statement.executeUpdate("UPDATE patient SET nom='" + nom + "', prenom='" + prenom + "', dateDeNaissance='" + dateDeNaissance + "', sexe='" + sexe + "', numeroSecuriteSocial='" + numeroSecuriteSocial + "' WHERE id=" + id);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.connexion().close();
		}
	}

	public void delete(int id)  {
		try {
			Statement st = this.connexion().createStatement();
			st.executeUpdate("UPDATE patient set status='0' where id="+id+"");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
