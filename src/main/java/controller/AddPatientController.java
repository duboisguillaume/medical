package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PatientModel;

/**
 * Servlet implementation class AddPatientController
 */
@WebServlet("/addPatient")
public class AddPatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPatientController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("WEB-INF/add-patient.jsp").forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nom = request.getParameter("nom");
		String prenom =request.getParameter("prenom");
		String sexe = request.getParameter("sexe");
		String dateDeNaissance=request.getParameter("dateDeNaissance");
		String numeroSecuriteSociale =request.getParameter("numeroSecuriteSociale");
//		String nameInfirmiere =request.getParameter("nameInfirmiere");
//		String adresseInfirmiere = request.getParameter("adresseInfirmiere");
		
		PatientModel pm = new PatientModel();
		
		try {
			pm.addPatient(nom,prenom,sexe,dateDeNaissance,Integer.parseInt(numeroSecuriteSociale));
			response.sendRedirect("liste");
		} catch (Exception e ){
			e.printStackTrace();
		}
	}

}
