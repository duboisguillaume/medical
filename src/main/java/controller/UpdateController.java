package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entity.PatientEntity;
import model.PatientModel;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet(name = "Update", urlPatterns = { "/update" })
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PatientModel pm = new PatientModel();
		
		try {
			PatientEntity patient = pm.onePatient(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("patient", patient);			
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.getRequestDispatcher("WEB-INF/updatePatient.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("nom");
		request.getParameter("prenom");
		request.getParameter("sexe");
		request.getParameter("dateDeNaissance");
		request.getParameter("numeroSecuriteSociale");
		request.getParameter("nameInfirmiere");
		request.getParameter("adresseInfirmiere");
	}

}
