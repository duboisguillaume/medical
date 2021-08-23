package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.InfirmiereEntity;
import Entity.PatientEntity;
import model.InfirmiereModel;
import model.PatientModel;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet(name = "UpdatePatient", urlPatterns = { "/updatePatient" })
public class UpdatePatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePatientController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PatientModel pm = new PatientModel();
		InfirmiereModel inf = new InfirmiereModel();
		InfirmiereModel inf2 = new InfirmiereModel();
		
		List<InfirmiereEntity> infirmieres = new ArrayList<>();
		try {
			PatientEntity patient = pm.onePatient(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("patient", patient);			

			infirmieres = inf.fetchAllInfirmiere();
			InfirmiereEntity infirmiere2 = inf.oneInfirmiere(patient.getInfirmiere_id());
			request.setAttribute("infirmieres", infirmieres);
			request.setAttribute("oneInf", infirmiere2);
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.getRequestDispatcher("WEB-INF/updatePatient.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String sexe = request.getParameter("sexe");
		String dateDeNaissance = request.getParameter("dateDeNaissance");
		String numeroSecuriteSocial = request.getParameter("numeroSecuriteSocial");
		//request.getParameter("nameInfirmiere");
		//request.getParameter("adresseInfirmiere");
		PatientModel pm = new PatientModel();
		
		try {
			pm.updatePatient(Integer.parseInt(id), nom, prenom, sexe, dateDeNaissance, Integer.parseInt(numeroSecuriteSocial));	
			response.sendRedirect("liste");
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

}
