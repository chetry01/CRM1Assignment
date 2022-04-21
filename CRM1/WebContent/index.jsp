<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/TopicWiseCSS/BootStrapEveryThing.css" class="rel">
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
	<title>Log In Page</title>


<script type="text/javascript">
	function checkValidation() {

		let userName = document.getElementById("userName").value;
		let password = document.getElementById("password").value;

		if (userName == null || userName.trim() == "" || password == null
				|| password.trim() == "") {
			alert("Enter Valid User Name / Password");
			return false;

		} else {
			alert("Sure about your user name and password?(Lets see)");
		}

	}
</script>

<style>
.content {
  max-width: 2000px;
  margin: centre;
}
</style>
<body>




</head>
<body>

<h2>${msg}</h2>

<div class="content">
 

   <section class="vh-100 my-4">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
       
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
      <form action="ControllerServlet" method="GET">
            
            <input type="hidden" name="command" value="VALIDATE"/>
        
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <h1 class="lead fw-normal mb-0 me-3">User Login</h1>
          </div><br>

          <div class="form-outline mb-4">
                <label class="form-label" >Enter User Name :</label>
            	<input type="text" name="userName" id="userName" class="form-control form-control-lg" placeholder="Enter Username" />
          </div>

          <div class="form-outline mb-3">
                <label class="form-label" >Enter Password :</label>
            	<input type="password" name="password" id="password" class="form-control form-control-lg" placeholder="Enter password" />
          </div>

         

          <div class="text-center text-lg-start mt-4 pt-2">
            	<button type="submit" value="login" class="btn btn-primary btn-lg" onclick="return checkValidation()" style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
            	<h1 class="small fw-bold mt-2 pt-1 mb-0">New User?Want to Register? <a href="registration.jsp" class="link-danger">Click Here</a></h1>
          </div>

        </form>
      </div>
    </div>
  </div>
  
</section>



</div>

</body>
</html>