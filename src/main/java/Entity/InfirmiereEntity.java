package Entity;

public class InfirmiereEntity {

	private int id;
	private int adresse_id;
	private int numeroPro;
	private String nom;
	private String prenom;
	private int telPro;
	private int telPerso;
	
	public InfirmiereEntity() {
	};
	
	public InfirmiereEntity(int id, int adresse_id, int numeroPro, String nom, String prenom, int telPro,
			int telPerso) {
		super();
		this.id = id;
		this.adresse_id = adresse_id;
		this.numeroPro = numeroPro;
		this.nom = nom;
		this.prenom = prenom;
		this.telPro = telPro;
		this.telPerso = telPerso;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAdresse_id() {
		return adresse_id;
	}

	public void setAdresse_id(int adresse_id) {
		this.adresse_id = adresse_id;
	}

	public int getNumeroPro() {
		return numeroPro;
	}

	public void setNumeroPro(int numeroPro) {
		this.numeroPro = numeroPro;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public int getTelPro() {
		return telPro;
	}

	public void setTelPro(int telPro) {
		this.telPro = telPro;
	}

	public int getTelPerso() {
		return telPerso;
	}

	public void setTelPerso(int telPerso) {
		this.telPerso = telPerso;
	}
	
	
}
