
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>Create Account</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">	
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
<script type="text/javascript">
    window.onload=function()
    {
    	var bt=document.getElementById("bt");
    	bt.onclick=function()
    	{
    		if(myform.ClassName.value=="")
    		{
    			alert("课件名称为空!");
    			myform.ClassName.focus();
    			return false;
    		} 

        }
    }
    
</script>
	<!--
    	作者：offline
    	时间：2017-07-03
    	描述：<script type="text/javascript">
      function fileSelected() {
        var file = document.getElementById('fileToUpload').files[0];
        if (file) {
          var fileSize = 0;
          if (file.size > 1024 * 1024)
            fileSize = (Math.round(file.size * 100 / (1024 * 1024)) / 100).toString() + 'MB';
          else
            fileSize = (Math.round(file.size * 100 / 1024) / 100).toString() + 'KB';

          document.getElementById('fileName').innerHTML = 'Name: ' + file.name;
          document.getElementById('fileSize').innerHTML = 'Size: ' + fileSize;
          document.getElementById('fileType').innerHTML = 'Type: ' + file.type;
        }
      }

      function uploadFile() {
        var fd = new FormData();
        fd.append("fileToUpload", document.getElementById('fileToUpload').files[0]);
        var xhr = new XMLHttpRequest();
        xhr.upload.addEventListener("progress", uploadProgress, false);
        xhr.addEventListener("load", uploadComplete, false);
        xhr.addEventListener("error", uploadFailed, false);
        xhr.addEventListener("abort", uploadCanceled, false);
        xhr.open("POST", "UploadMinimal.aspx");
        xhr.send(fd);
      }

      function uploadProgress(evt) {
        if (evt.lengthComputable) {
          var percentComplete = Math.round(evt.loaded * 100 / evt.total);
          document.getElementById('progressNumber').innerHTML = percentComplete.toString() + '%';
        }
        else {
          document.getElementById('progressNumber').innerHTML = 'unable to compute';
        }
      }

      function uploadComplete(evt) {
        /* This event is raised when the server send back a response */
        alert(evt.target.responseText);
      }

      function uploadFailed(evt) {
        alert("There was an error attempting to upload the file.");
      }

      function uploadCanceled(evt) {
        alert("The upload has been canceled by the user or the browser dropped the connection.");
      }
    </script>
   -->

    
</head>

<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">上传课件</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" name="myform" role="form" action="Upload" enctype="multipart/form-data" method="post">
				<div class="form-inner">
				
					<div class="form-group">
					  
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">课件名称</label>
			            <input type="text" class="form-control" id="ClassName" name="ClassName" placeholder="ClassName">		            		            		            
		          
			          </div>
	
			          <div class="col-md-6">
			           	<label class="control-label"> 选择一个文件 </label>    
			             <input type="file" name="uploadFile" />
			          </div>
			          <!--    
			          <div class="col-md-6">		          	
			            <label for="last_name" class="control-label">作者</label>
			            <input type="text" class="form-control" name="ID" placeholder="">		            		            		            
			          </div>  
			        </div> 
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label class="control-label">上传者</label>
			             <input class="form-control" name="Pusher" type="text" > 
			            </div>	
			          </div> -->    
			          </div>  
			      </div>
			      
			      <!--
                  	作者：offline
                  	时间：2017-07-03
                  	描述：	
			        
			        			
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">Username</label>
			            <input type="text" class="form-control" id="username" placeholder="">		            		            		            
			          </div>
			        
			        <div class="form-group">
			        <div class="col-md-6 ">
			          	<label for="fileToUpload">Select a File to Upload</label>
		          			<input type="file" name="fileToUpload" id="fileToUpload" onchange="fileSelected();"/>
		          			<input type="button" onclick="uploadFile()" value="Upload" />
		          	</div>
		          	<div id=""></div>
                    <div id="fileSize"></div>
                    <div id="fileType"></div>
                    <div class="col-md-6">
                    	
			        </div>
			        <div id="progressNumber"></div>
			        </div>
                  -->
                  	<br/><br/>
                
			        <div class="form-group">
			          <div class="col-md-12">
			            <label class="control-label">简介</label>
			            <input type="text" class="form-control" name="Describe" placeholder="">
			          </div>

			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			     <!-- <label><input type="checkbox">I agree to the <a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">Terms of Service</a> and <a href="#">Privacy Policy.</a></label>-->
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" id="bt" value="上传" class="btn btn-info">
			            <a href="index.jsp" class="pull-right">返回主页</a>
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

    