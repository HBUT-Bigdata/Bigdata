
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/6.css" />
	<link rel="stylesheet" type="text/css" href="css/4.css">
	<link rel="stylesheet" href="css/5.css">
</head>
<body>
	<div class="htmleaf-container">
		
		<div class="main">
		    

		    <div id="image_container" class="container">
		   
				<a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="http://www.htmleaf.com/jQuery/Lightbox-Dialog/201704114449.html" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
		    </div>

		    <div id="video_container" class="container">
		      <h3>视频</h3>
		      <div style="margin-top:20px ;"> 
		      
		      
		        <div class="vid htmlvid" style="background-image:url(img/vid_towers.jpg)" vidSrc="videos/towers.mp4"></div>
		        
		        
		      </div>
		     
		    </div>

		    <div id="local_image_container" class="container">
		      
		     
		      
		    </div>

		    <div class="container" id="broken_container">
		      
		    </div>

		   
		  </div>
		
	</div>
	
	<script src="dist/BigPicture.js"></script>
	<script>
	  (function() {

	    function setClickHandler(id, fn) {
	      document.getElementById(id).onclick = fn;
	    }

	    setClickHandler('image_container', function(e) {
	      e.target.tagName === 'IMG' && BigPicture({
	        el: e.target,
	        imgSrc: e.target.src.replace('_thumb', '')
	      });
	    });

	    setClickHandler('local_image_container', function(e) {
	      (e.target.tagName === 'IMG' || e.target.className === 'background-image') &&
	        BigPicture({
	          el: e.target
	        });
	    });

	    setClickHandler('video_container', function(e) {
	      var className = e.target.className;
	      ~className.indexOf('htmlvid') &&
	        BigPicture({
	          el: e.target,
	          vidSrc: e.target.getAttribute('vidSrc')
	        });
	      ~className.indexOf('vimeo') &&
	        BigPicture({
	          el: e.target,
	          vimeoSrc: e.target.getAttribute('vimeoSrc')
	        });
	      ~className.indexOf('youtube') &&
	        BigPicture({
	          el: e.target,
	          ytSrc: e.target.getAttribute('ytSrc')
	        });
	    })

	    setClickHandler('broken_container', function(e) {
	      e.target.id === 'broken_image' &&
	        BigPicture({
	          el: e.target,
	          imgSrc: '/nopic.jpg'
	        });
	      e.target.id === 'broken_vid' &&
	        BigPicture({
	          el: e.target,
	          vidSrc: '/novid.mp4'
	        });
	      ~e.target.className.indexOf('vimeo') &&
	        BigPicture({
	          el: e.target,
	          vimeoSrc: 'ajoiejlkr'
	        })
	      ~e.target.className.indexOf('youtube') &&
	        BigPicture({
	          el: e.target,
	          ytSrc: 'oijlksdjf'
	        })
	    });

	  })();
	</script>
</body>
</html>