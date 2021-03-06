package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Entity.DeplacementEntity;
import Entity.InfirmiereEntity;
import Entity.PatientEntity;

public class DeplacementModel extends AccessDB {

	public DeplacementModel() {
		super();
	}

	public List<DeplacementEntity> fetchAllDeplacement() throws Exception {

		List<DeplacementEntity> deplacements = new ArrayList<DeplacementEntity>();

		Statement statement = this.connexion().createStatement();
		ResultSet result;

		try {
			result = statement.executeQuery("Select d.id, p.nom, p.prenom, d.date, d.cout, i.nom, i.prenom from deplacement d INNER JOIN patient p ON p.id = d.patient_id INNER JOIN infirmiere i ON i.id = d.infirmiere_id WHERE d.status='1'");
			while(result.next()) {
				deplacements.add(new DeplacementEntity(
						result.getInt("d.id"),
						result.getString("p.nom"),
						result.getString("p.prenom"),
						result.getDate("d.date"),
						result.getDouble("d.cout"),
						result.getString("i.nom"),
						result.getString("i.prenom")
						));	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.connexion().close();
		}

		return deplacements;
	}
	
	public DeplacementEntity oneDeplacement(int id) throws Exception { 

		DeplacementEntity deplacement = new DeplacementEntity();
		
		Statement statement = this.connexion().createStatement();
		ResultSet result;
		
		try {
			result = statement.executeQuery("SELECT * FROM deplacement where id=" + id);
			while(result.next()) {
				deplacement.setId(id);
				deplacement.setDate(result.getDate("date"));
				deplacement.setCout(result.getDouble("cout"));
				deplacement.setPatient_id(result.getInt("patient_id"));
				PatientEntity p = new PatientModel().onePatient(deplacement.getPatient_id());
				deplacement.setNomPatient(p.getNom());
				deplacement.setPrenomPatient(p.getPrenom());
				deplacement.setInfirmiere_id(result.getInt("infirmiere_id"));
				InfirmiereEntity i = new InfirmiereModel().oneInfirmiere(deplacement.getInfirmiere_id());
				deplacement.setNomInfirmiere(i.getNom());
				deplacement.setPrenomInfirmiere(i.getPrenom());
			}
		}
		
		catch (SQLException e) {
				e.printStackTrace();
			} finally {
				this.connexion().close();
			}
      return deplacement;
	}

	public void updateDeplacement(int id, double cout, LocalDate date, int infirmiere_id, int patient_id) throws Exception {
		try {
			PreparedStatement ps = this.connexion().prepareStatement("UPDATE deplacement SET patient_id=?, infirmiere_id=?, cout=?, date=? where id=?");
			ps.setInt(1, patient_id);
			ps.setInt(2, infirmiere_id);
			ps.setDouble(3, cout);
			ps.setObject(4, date);
			ps.setInt(5, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.connexion().close();
		}
	}
		
	public void deleteDeplacement(int id)  {
		try {
			Statement st = this.connexion().createStatement();
			st.executeUpdate("update deplacement set status='0' where id="+id+"" );
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void addDeplacement( int idPatient, LocalDate date, double cout, int idInfirmiere) throws Exception {
		String query = "INSERT INTO deplacement (patient_id, date, cout, infirmiere_id) VALUES (?, ?, ?, ?)";

		PreparedStatement pstmt = this.connexion().prepareStatement(query);
		pstmt.setInt(1,idPatient);
		pstmt.setObject(2, date);
		pstmt.setDouble(3,cout);
		pstmt.setInt(4,idInfirmiere);

		pstmt.executeUpdate();
		pstmt.close();
	}
}
