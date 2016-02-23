<!doctype html>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
<title>页面异常</title>
<style type="text/css">
*{
	margin:0;
	padding:0;
}
.exception{
	background:url('/Public/201504/images/404bg.png') no-repeat center center;
	height:250px;
	padding-top: 13px;
	
    background-size: 225px;
    background-position: 31px -18px;
}
.exception p{
	text-align:center;}
.ex_con{
	padding-top:110px;}
.ex_con1{
	color:#EF372B;
	font-weight: bold;
	margin-top: 6px;}
.ex_index{
  
  margin-top:20px;
}
.ex_index a{
	border: 1px #ccc solid;
    border-radius: 5px;
	padding: 5px 25px;
	text-decoration: none;
	font-weight: bolder;}
.goback{
	color: #EF372B;
	padding-left: 5px;
	
}
.goback::before {
    display: inline-block;
    content: "";
    width: 11px;
    height: 11px;
    border-style: solid;
    border-color: #EF372B;
    margin: 0px 0px 0px 10px;
    border-width: 0px 0px 2px 2px;
    transform: rotate(45deg);
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
<meta name="format-detection" content="telephone=no" />
<meta name="format-detection" content="email=no" />
</head>
<body style="background:#F0F0F0;">
<div class="exception">
	<a style="display: block;font-size: 18px;text-decoration: none;" class="goback" href="javascript:;" onClick="javascript:history.go(-1);">返回</a>

	<p class="ex_con">从前有座山，山里有个庙，庙里有个</p>
	<p class="ex_con1">页面，现在找不到......</p>
	<p class="ex_index"><a href="/">返回首页</a></p>
</div>
</body>
</html>