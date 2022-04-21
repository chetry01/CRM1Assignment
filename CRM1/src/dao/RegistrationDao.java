package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.postgresql.util.PSQLException;

import modal.JobDetails;
import modal.UserDetails;
import util.Utils;

public class RegistrationDao {

	public boolean checkDuplicate(String userName) throws NumberFormatException, IOException, SQLException {

		Connection con = Utils.getConnection();

		String countQuery = "select count user_name from test1.Registration where user_name=?";

		PreparedStatement pst = null;
		ResultSet rs = null;
		int count = 0;

		try {
			con = Utils.getConnection();
			pst = con.prepareStatement(countQuery);

			pst.setString(1, userName);

			rs = pst.executeQuery();
			while (rs.next()) {

				count = Integer.parseInt(rs.getString("user_name"));

			}

		} catch (

		Exception e) {
			// TODO: handle exception
		} finally {
			con.close();
			pst.close();
			rs.close();

		}

		if (count > 0) {
			return true;
		}
		return false;
	}

	public boolean validate(String userName, String password) throws SQLException {

		Connection con = Utils.getConnection();

		String countQuery = "select count user_name from test1.Registration where user_name=? and password=?";

		PreparedStatement pst = null;
		ResultSet rs = null;
		int count = 0;

		try {
			con = Utils.getConnection();
			pst = con.prepareStatement(countQuery);

			pst.setString(1, userName);
			pst.setString(2, password);

			rs = pst.executeQuery();
			while (rs.next()) {

				count = Integer.parseInt(rs.getString("user_name"));

			}

		} catch (

		Exception e) {
			// TODO: handle exception
		} finally {
			con.close();
			pst.close();
			rs.close();

		}

		if (count > 0) {
			return true;
		}
		return false;
	}

	public void register(UserDetails userDetails) throws Exception {

		Connection con = Utils.getConnection();

		String insertQuery = "INSERT INTO test1.Registration(user_name, password, first_name, last_name, gender, email, phone_number, date_of_birth)"
				+ "	VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
		PreparedStatement pst = null;

		try {

			pst = con.prepareStatement(insertQuery);

			pst.setString(1, userDetails.getUserName());
			pst.setString(2, userDetails.getPassword());
			pst.setString(3, userDetails.getFirstName());
			pst.setString(4, userDetails.getLastName());
			pst.setString(5, userDetails.getGender());
			pst.setString(6, userDetails.getEmail());
			pst.setString(7, userDetails.getPhoneNumber());
			pst.setString(8, userDetails.getDateOfBirth());

			pst.executeUpdate();

		} catch (PSQLException e) {

			System.out.println("Same username what to do");

		}

		finally {
			con.close();
			pst.close();
		}
	}

	public void registerJobDetails(JobDetails details) throws SQLException {
		Connection con = Utils.getConnection();

		String insertQuery = "INSERT INTO test1.RegisterJobDetails(job_type,  job_description, place_of_work, phone_no)	VALUES (?, ?, ?, ?);";
		PreparedStatement pst = null;

		try {

			pst = con.prepareStatement(insertQuery);

			pst.setString(1, details.getJobType());
			pst.setString(2, details.getJobdescription());
			pst.setString(3, details.getPlaceOfWork());
			pst.setString(4, details.getPhoneNo());

			pst.executeUpdate();

		} catch (PSQLException e) {

			System.out.println("Same username what to do");

		}

		finally {
			con.close();
			pst.close();
		}
	}

}
