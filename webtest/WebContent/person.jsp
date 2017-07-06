<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<title>Personal</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">	
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>

<script language="javascript" type="text/javascript" src="Date/WdatePicker.js"></script>
<body class="templatemo-bg-gray">
<%
	String name=(String) session.getAttribute("name");
	String sex=(String)session.getAttribute("sex");
	String birth=(String)session.getAttribute("birth");
	String Id=(String)session.getAttribute("Id");
	String handle=(String)session.getAttribute("handle");
	String pwd=(String)session.getAttribute("pwd");
	
	String M=sex.equals("Male") ? "checked":"";
	String FM=sex.equals("Female") ? "checked":"";
%>

	<div class="container">
		<div class="col-md-12">		
		<h1 class="margin-bottom-15">Personal Info</h1>	
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" action="ChangeInfo" method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">Your Name</label>
			            <input type="text" class="form-control" name="Name" placeholder="" value=<%=name %>  />		            		            		            
			          </div>  
			          <div class="col-md-6">		          	
			            <label for="last_name" class="control-label">Your ID</label>
			            <label for="last_name" class="form-control"><%=Id %></label>
			             		            		            		            
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">Birthday</label>
			            <div class="form-group">
			            	<div class="col-md-12">
			            		<input class="form-control" name="birth" type="text" onclick="WdatePicker()" value=<%=birth %>/>
			              </div>
			            </div>  	
			          </div>
			        </div>      
			        
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">Email</label>
			            <input type="email" class="form-control" name="email" placeholder="name@email.com">		            		            		            
			          </div>              
			        </div>
			        			
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">Username</label>
			             <label for="last_name"  class="form-control"><%=handle %></label>		         
			          </div>
			          
			          <div class="col-md-6 templatemo-radio-group">
			          	<label class="radio-inline">
		          			<input type="radio" name="optionsRadios" <%=M %> id="optionsRadios1" value="Male"  > Male
		          		</label>
		          		<label class="radio-inline">
		          			<input type="radio" name="optionsRadios" <%=FM %> id="optionsRadios2" value="Female"> Female
		          		</label>
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">Old Password</label>
			            <input type="password" class="form-control" name="old_password" placeholder="">
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">New Password</label>
			            <input type="password" class="form-control" name="new_password" placeholder="">
			          </div>

		</div>
			        
			        <div class="form-group">
			          <div class="col-md-12">
			     <!-- <label><input type="checkbox">I agree to the <a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">Terms of Service</a> and <a href="#">Privacy Policy.</a></label>-->
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" value="Save" class="btn btn-info">
			            <a href="index.jsp"  class="pull-right">Home</a>
			          </div>
			        </div>	
			        </div>
	</form>
	</div>		
	</div>		    	
	
	<!-- Modal -->
	<!--  
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
	      </div>
	      <div class="modal-body">
	      	<p>This form is provided by <a rel="nofollow" href="http://www.cssmoban.com/page/1">Free HTML5 Templates</a> that can be used for your websites. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
	        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
	        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div> 
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>


-->
</body>
</html> 

    