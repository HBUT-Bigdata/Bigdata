<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>视频播放器</title>
<link rel="stylesheet" href="css/reset.min.css">
<link rel="stylesheet" href="css/style1.css">
</head>
<script type="text/javascript">

window.onload = function()
{
	document.body.bgColor = "#000";
	window.setInterval("start2()",300);
}
function start2()
{
	var imgObj = document.createElement("img");
	document.body.appendChild(imgObj);
	imgObj.setAttribute("src","xingxing.png");
	var imgWidth = getRandom(15,85);
	imgObj.setAttribute("width",imgWidth);
	var winWidth = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth;
	var winHeight = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight;
	var x = getRandom(0,winWidth);
	var y = getRandom(0,winHeight);
	imgObj.setAttribute("style","position:absolute;left:"+x+"px;top:"+y+"px");
	imgObj.setAttribute("onclick","removeImg(this)");
}
function removeImg(imgObj)
{
	document.body.removeChild(imgObj);
}
function getRandom(min,max)
{
	var random = Math.random()*(max-min)+min;
	random = Math.floor(random);
	return random;
}
</script>

<style type="text/css">
	body{
		background-color:lightblue;
		margin: 0px;
		padding: 0px;
	}
	img{
             
        position: absolute;
        margin-left: 763px;
        margin-top: 0px;

	}
	div{
		position: absolute;
		text-align: center;
		background-color: green;
		text-align: center;
	}
	table{
		position: absolute;
	}
	
	
	</style>



<body>
<table width="760" cellpadding="0" cellspacing="0" align="center"><tr><td height="200" background="images/bannerr.jpg">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="760" height="190">
  <param name="movie" value="banner.swf">
  <param name="quality" value="high">
  <param name="wmode" value="transparent">
  <embed src="banner.swf" width="760" height="190" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
</object>

</td></tr></table>
<img src="images/qiu.jpg">
<script src="/demos/googlegg.js"></script>
<div id="site">
  <div id="videoBox" class="box">
    <video width="400" controls>
      <source src="Video/A.mp4" type="video/mp4">
      Your browser does not support HTML5 video. </video>
  </div>
 </div>
  
<script src="js/jquery.min.js"></script>
<script src="js/index.js"></script>

<div style="text-align:center;margin:100px 0px; font:normal 14px/24px 'MicroSoft YaHei';color:#ffffff">

</div>
</body>
</html>


    