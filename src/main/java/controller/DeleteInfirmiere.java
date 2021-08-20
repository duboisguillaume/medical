package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.InfirmiereModel;

@WebServlet("/deleteInfirmiere")
public class DeleteInfirmiere extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		new InfirmiereModel().delete(Integer.parseInt(req.getParameter("id")));
		res.sendRedirect("liste");
	}

}
