<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link rel="stylesheet" href="/TopicWiseCSS/BootStrapEveryThing.css" class="rel"/>
  

    <title>Registration Page</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>

<style type="text/css">



		input:required,
		textarea:required {
		  border-color: red !important;
		}
		input:required + label {
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
		input + label {
		  display: inline-block;
		  margin-right: 10px;
		}
		
		input[type=text],
		input[type=email],
		textarea {
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


<script type="text/javascript">



function checkValidation() {
	
	
	
	let userName=document.getElementById("userName").value;
	let password=document.getElementById("password").value;
	let confirmPassword=document.getElementById("confirmPassword").value;
	let firstName=document.getElementById("firstName").value;
	let lastName=document.getElementById("lastName").value;
	let gender=document.getElementsByName("gender")[0].value;	
	let email=document.getElementById("email").value;
	let phoneNumber=document.getElementById("phoneNumber").value;
	let dateOfBirth=document.getElementById("dateOfBirth").value;
	
	
	if((password!=confirmPassword)){
		alert(" Password doesnt match with confirm password");
		return false;
	}
	
	if((userName==null)||(userName.trim()=="")){
		alert("Enter Valid User Name");
		return false;
	}
	
	if((password==null)||(password.trim()=="")){
		alert("Enter Valid Password");
		return false;
	}
	
	
	
	
	if((firstName==null)||(firstName.trim()=="")){
		alert("Enter Valid firstName");
		return false;
	}
	
	if((lastName==null)||(lastName.trim()=="")){
		alert("Enter Valid lastName");
		return false;
	}
	
	if((gender==null)||(gender.trim()=="")){
		alert("Enter Valid gender");
		return false;
	}
	
	
	if((email==null)||(email.trim()=="")){
		alert("Enter Valid email");
		return false;
	}
	
	
	if((phoneNumber==null)||(phoneNumber.trim()=="")){
		alert("Enter Valid phoneNumber");
		return false;
	}
	
	
	
	if((dateOfBirth==null)||(dateOfBirth.trim()=="")){
		alert("Enter Valid dateOfBirth");
		return false;
	} 
	
	alert("Confirm Registration");
	
}

</script>


</head>
<body>

            <div class="container mt-4">
            <div class="card"style="width: 30rem;">
             <div class="card-body">
            <h3>Registration Form</h3>
            <form action="ControllerServlet" method="GET">
            
            <input type="hidden" name="command" value="ADD"/>
            
            <div class="mb-3">
                <label class="form-label">User Name :</label>
                <input type="text" name="userName" id="userName" class="form-control" placeholder="Enter Your User Name" required>
              </div>
              
             <div class="mb-3">
                <label class="form-label">Password :</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Enter Your Password" required>
              </div>
              
              <div class="mb-3">
                <label class="form-label" >Confirm Password :</label>
                <input type="password" name="confirmPassword" id="confirmPassword" class="form-control" placeholder="Confirm Your Password" required>
              </div>
                                
                                      
              <div class="mb-3">
                <label class="form-label">First Name :</label>
                <input type="text" name="firstName"  id="firstName" class="form-control" placeholder="Enter Your First Name" required>
              </div>
              
              <div class="mb-3">
                <label for="recipient-name" class="form-label">Last Name :</label>
                <input type="text" name="lastName" id="lastName" class="form-control" placeholder="Enter Your Last Name" required>
              </div>
              
               <div class="from-check">
   			  <label class="form-label">Select Gender :</label><br>
              <input class="form-check-input" type="radio" name="gender"  value="male"  required>
              <label class="from-check-label" for="male" >Male</label><br>
              <input class="form-check-input" type="radio" name="gender" value="female" required >
              <label class="from-check-label" for="female">Female</label><br>
              <input class="form-check-input" type="radio" name="gender" value="others" required >
              <label class="from-check-label" for="others">Others</label><br>
              </div>
              
               <div class="mb-3">
                <label class="form-label" for="email" >Email Address :</label>
                <input type="email" name="email"  id="email" class="form-control" placeholder="Enter Your Email Address" required>
              </div>
              
               <div class="mb-3">
              <label for="phoneNumber">Phone No :</label>
  			  <input type="tel" name="phoneNumber"  id="phoneNumber" class="form-control" placeholder="Enter Your Number " required>
   			  </div>
              
              <div class="mb-3">
              <label for="dateOfBirth">Date Of Birth :</label>
   			  <input type="date" class="form-control" name="dateOfBirth" id="dateOfBirth" required>
   			  </div>
              
              
              
              <div class="form-check">
              <button type="submit" value="login" class="btn btn-primary" onClick="return checkValidation()">Submit</button>
              </div>
            
            </form>
          </div>
          </div>
          </div>
          
          
</body>
</html>