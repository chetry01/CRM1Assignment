package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RegistrationDao;
import modal.JobDetails;
import modal.UserDetails;
import util.Constants;

@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RegistrationDao registrationDao = new RegistrationDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String theCommand = request.getParameter("command");

			if (theCommand == null) {
				theCommand = "LOGIN";
			}
			switch (theCommand) {

			case "VALIDATE": {

				validate(request, response);
				break;

			}

			case "ADD": {
				register(request, response);
				break;
			}

			case "LOGIN": {
				login(request, response);
				break;

			}

			case "INSERTJOBDETAILS": {
				insertJobDetails(request, response);
				break;

			}

			default:
				login(request, response);

			}

		} catch (Exception e) {

			System.out.println(e);

		}

	}

	private void insertJobDetails(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String jobType;
		String jobdescription;
		String placeOfWork;
		String phoneNo;

		jobType = request.getParameter("jobType").trim();
		jobdescription = request.getParameter("jobdescription").trim();
		placeOfWork = request.getParameter("placeOfWork").trim();
		phoneNo = request.getParameter("phoneNo").trim();

		JobDetails details = new JobDetails(jobType, jobdescription, placeOfWork, phoneNo);

		registrationDao.registerJobDetails(details);

		request.setAttribute(Constants.MESSAGEKEY, Constants.INSERTJOBDETAILSSUCCESSMESSAGE);
		login(request, response);
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userName;
		String password = null;
		String firstName;
		String lastName;
		String gender;
		String email;
		String phoneNumber;
		String dateOfBirth;

		userName = request.getParameter("userName").trim();

		boolean duplicate = registrationDao.checkDuplicate(userName);

		if (duplicate) {

			request.setAttribute(Constants.MESSAGEKEY, Constants.INSERTUNSUCCESSMESSAGE);
			login(request, response);

		}

		else {
			password = request.getParameter("password").trim();
			firstName = request.getParameter("firstName").trim();
			lastName = request.getParameter("lastName").trim();
			gender = request.getParameter("gender").trim();
			email = request.getParameter("email").trim();
			phoneNumber = request.getParameter("phoneNumber").trim();
			dateOfBirth = request.getParameter("dateOfBirth").trim();

			System.out.println(userName + " " + password + " " + firstName + " " + lastName + " " + gender + " " + email
					+ " " + phoneNumber + " " + dateOfBirth);

			UserDetails userDetails1 = new UserDetails(userName, password, firstName, lastName, gender, email,
					phoneNumber, dateOfBirth);

			registrationDao.register(userDetails1);

			request.setAttribute(Constants.MESSAGEKEY, Constants.INSERTSUCCESSMESSAGE);
			login(request, response);
		}

	}

	private void validate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		String userName = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		System.out.println(userName + " " + password);
		boolean validate = registrationDao.validate(userName, password);

		if (!validate) {

			request.setAttribute(Constants.MESSAGEKEY, Constants.LOGINUNSUCESSFULMESSAGE);

			RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp");
			dispatcher.forward(request, response);

		}

		else {

			request.setAttribute("TheRow", userName);
			request.setAttribute(Constants.MESSAGEKEY, Constants.LOGINSUCESSFULMESSAGE);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
			dispatcher.forward(request, response);

		}

	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws Exception {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}
}
