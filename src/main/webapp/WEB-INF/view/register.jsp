<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>New Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="static/css/style.css" rel="stylesheet">
</head>
<body>
        <div class="header">
            <h1>Fitness and Nutrition</h1>
        </div>
         
<div class="bg-img"></div>

<form  onSubmit = "return checkPassword(this)" action="save-user" method="post">
  
  <div class="register-container">
    
    <h3>New Registration</h3>

    
    <hr>
    <input type="hidden" name="id" value="${user.id }" />
	
    <label for="fname"><b>First Name</b></label><br>
    <input type="text" placeholder="Enter First Name" name="firstname" id="fname" value="${user.firstname}" pattern="^[A-Za-z]{3,15}$" title="Only contain letter" required><br>
    
    <label for="lname"><b>Last Name</b></label><br>
    <input type="text" placeholder="Enter Last Name" name="lastname" id="lname" value="${user.lastname}" pattern="^[A-Za-z]{3,15}$" title="Only contain letter" required><br>
    
    <label for="age"><b>Age</b></label><br>
    <input type="number" placeholder="Enter Age" name="age" id="age" value="${user.age}" required><br>
    
    
    <label for="uname"><b>User Name</b></label><br>
    <input type="text" placeholder="Enter UserName" name="username" id="uname" value="${user.username}" pattern="^[A-Za-z0-9_-]{3,15}$" required><br>

    <label for="psw"><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="password" id="psw"  value="${user.password}" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required><br>

    <label for="Cpsw"><b>Confirm Password</b></label><br>
    <input type="password" placeholder="Confirm Password" name="Cpassword" id="psw-confirm" value="${user.Cpassword}" required><br>
    
    <button type="submit" class="registerbtn">Register</button>
  
   </div>  
 </form>
  
    <script>
    function checkPassword(form)
    {
    var password = form.password.value;
    var Cpassword = form.Cpassword.value;
        
        if(password!=Cpassword)
            {
                alert ("\nPassword did not match: Please try again...") 
                    return false; 
            }
        
        else
            {
            return true;
            }
    }
    </script>

</body>
</html>
