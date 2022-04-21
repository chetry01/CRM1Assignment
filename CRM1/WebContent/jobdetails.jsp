<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css" />

<title>Job Detail Page</title>

<style type="text/css">
input:required, textarea:required {
	border-color: red !important;
}

input:required+label {
	color: red;
}

form {
	padding: 20px;
	max-width: 500px;
	margin: 0 auto;
}

form div {
	padding: 5px;
}

label {
	display: block;
}

input+label {
	display: inline-block;
	margin-right: 10px;
}

input[type=text], input[type=email], textarea {
	border: 1px solid #999;
	padding: 5px;
	width: 100%;
}

/*
 :required {
  background: white;
}


input:required {
  box-shadow: 4px 4px 20px rgba(200, 0, 0, 0.85);
}


 
input:required:focus {
 
  outline: none;
}


input:required:hover {
 border: 1px solid red;
  opacity: 1;
} */
</style>
</head>
<body>
	<div class="container mt-4 center">
		<div class="card" style="width: 30rem;">
			<h4 style="margin-top: 0px;">Job role*</h4>

			<br> <br> <br> <br>
			<form action="ControllerServlet" method="GET">

				<input type="hidden" name="command" value="INSERTJOBDETAILS" /> <select
					name="jobType" id="jobType"
					style="margin-left: 120px; margin-top: -70px; width: 250px"
					class="custom-select">
					<option selected>Open this select menu</option>
					<option value="1">Business Development Executive</option>
					<option value="2">Customer Support Voice</option>
					<option value="3">Inside Sales</option>
					<option value="4">Field Sales</option>
					<option value="5">Content Writing</option>
					<option value="6">Digital Marketing</option>
					<option value="7">Digital Marketing</option>
				</select> <br> <br> <br> <br>
				<div class="form-outline mb-4">
					<label class="form-label">Job Description*:</label> <br>
					<pstyle="font-size:7px">(We will provide a Standard job
					Description that you can edit)
					<p>
						<input type="text" name="jobdescription" id="jobdescription"
							class="form-control form-control-lg"
							placeholder="Job Description" />
				</div>

				<br> <br> <br> <br>

				<div class="form-outline mb-3">
					<label class="form-label">Place Of work*(address) :</label> <input
						type="text" name="placeOfWork" id="placeOfWork"
						class="form-control form-control-lg" placeholder="Place Of work*" />
				</div>

				<br> <br> <br> <br>

				<div class="form-outline mb-3">
					<label class="form-label">Phone no for coordination :</label>
					<p style="font-size: 9px">Your Phone no .is extremely safe with
						us it is only shared with one person in the team
					<p>
						<input type="text" name="phoneNo" id="phoneNo"
							class="form-control form-control-lg"
							placeholder="Phone no for coordination" />
				</div>



				<div class="text-center text-lg-start mt-4 pt-2">
					<button type="submit" value="login" class="btn btn-primary btn-lg"
						style="padding-left: 2.5rem; padding-right: 2.5rem;">Submit</button>

				</div>

			</form>
		</div>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>