<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>

<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">You are</h1>	
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="create-account.jsp" method="post">				
		 	<div class="form-group mineright">      
           	<label for="username" class=" mineright fa-label"><i class="fa fa-user fa-big"></i></label>
		 	</div>
		     <div class="form-group mineright">
		     		<label class="radio-inline">
		          	<input type="radio" name="optionsRadios" checked="checked" id="optionsRadios1" value="Teacher"> Teacher 
		          	</label>
		     </div>
		     <div class="form-group mineright">
		            <label class="radio-inline">
		          	<input type="radio"  name="optionsRadios" id="optionsRadios2" value="Student"> Student
		          	</label> 
		     </div>
		     <hr>
		     <div class="form-group">
		          <div class="col-md-6">
		          	<div class="control-wrapper">
		          	if 
		          	<a class="pull-left" href="login.jsp">Log in</a>
		          	<a type="submit"></a>
		          	</div>
		          </div>
		          <div class="col-md-6">
		          	<div class="control-wrapper">
		          		<input type="submit" value="Next" class="btn btn-info pull-right">
		          	</div>
		          </div>
		        </div>
		      </form>
		</div>
	</div>

</body>
</html>