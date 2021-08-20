package controller;

import java.io.IOException;
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
 * Servlet implementation class PatientController
 */
@WebServlet(name = "Patient", urlPatterns = { "/patient" })
public class PatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PatientModel con = new PatientModel();
		InfirmiereModel inf = new InfirmiereModel();
		
		try {
			List<PatientEntity> patients = con.fetchAllPatient();
			request.setAttribute("patients", patients);

			List<InfirmiereEntity> infirmieres = inf.fetchAllInfirmiere();
			request.setAttribute("infirmieres", infirmieres);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("WEB-INF/patient.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
