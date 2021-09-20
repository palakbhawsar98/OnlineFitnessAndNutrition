<!DOCTYPE html >
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>User Login</title>
<link href="static/css/style.css" rel="stylesheet">

</head>
<body>

  <div class = "header">
      <h1>Fitness and Nutrition</h1>
  </div>
        
  <div class="bg-img"></div>
  
	<div class="container text-center">

		<h3>User Login</h3>
	
		<hr>
		<form class="form-horizontal" method="POST" action="user-login">
			<c:if test="${not empty error }">
				<div class="alert alert-danger">
					<c:out value="${error}"></c:out>
				</div>
			</c:if>

			<div class="form-group">
				<label class="control-label col-md-3">Username</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="username"
						value="${user.username }" required="required"
						placeholder="Username" />
				</div>
			</div>	
			
			<div class="form-group">
				<label class="control-label col-md-3">Password</label>
				<div class="col-md-7">
					<input type="Password" class="form-control" name="password"
						value="${user.password }" required="required"
						placeholder="Password" />
				</div>
			</div>
			
			<div class="form-group ">
				<input type="submit" class="btn" value="Login" />
			</div>
		</form>
	</div>

</body>
</html>