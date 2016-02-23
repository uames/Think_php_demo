<?php
    if(C('LAYOUT_ON')) {
        echo '{__NOLAYOUT__}';
    }
?>
<!doctype html>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-control" content="no-cache">
	<meta http-equiv="Cache" content="no-cache">
	<title>{$title}</title>
	<link rel="stylesheet" type="text/css" href="__PUBLIC__/Css/tipspage.css">
	<style type='text/css'>
	.com-header {
		height: 48px;
		position: relative;
		background-color: #fff;
		border-bottom: 1px solid #dfdfdf;
	}
	.common-cont {
		display: -webkit-box;
		display: -moz-box;
		display: -ms-flexbox;
		line-height: 48px;
	}
	.com-header .left-cont, .com-header .right-cont {
		width: 80px;
		line-height: 48px;
	}
	.com-header .sign {
		-webkit-box-flex: 1;
		-moz-box-flex: 1;
		-ms-flex: 1;
		color: #222;
		margin: 0;
		font-size: 18px;
		text-align: center;
		font-weight: normal;
	}
	.common-cont .right-cont {
		position: relative;
	}
	.com-header .goback {
		display: block;
		color: #ef372b;
		font-size: 18px;
		text-decoration: none;
	}
	.com-header .goback:before {
		display: inline-block;
		content: '';
		width: 11px;
		height: 11px;
		border-style: solid;
		border-color: #ef372b;
		margin: 0 0 0 10px;
		border-width: 0 0 2px 2px;
		transform: rotate(45deg);
		-webkit-transform: rotate(45deg);
		-moz-transform: rotate(45deg);
	}
	</style>	
</head>
<body>
	<header class="com-header">
			<div class="common-cont clearfix">
				<div class="left-cont"></div>
				<h3 class="sign">页面跳转</h3>
				<div class="right-cont">
				</div>
			</div>
		</header>
	<div class="tip-area">
		<div class="tips-wrap clearfix">
			<div class="<?php if($message){ echo 'success-img'; }else{ echo 'fail-img'; } ?>"></div>
			<div class="font-tips<?php if($message){ echo ' success-font'; }else{ echo ' fail-font'; } ?>">
				<span class="font"><?php if($message){ echo $message; }else{ echo $error; } ?></span>
			</div>
		</div>
		<p class="jump">页面自动 <a id="href" href="<?php echo($jumpUrl); ?>">跳转</a> 等待时间： <b id="wait"><?php echo($waitSecond); ?></b></p>
	</div>
	<script type="text/javascript">
		(function(){
		var wait = document.getElementById('wait'),href = document.getElementById('href').href;
		var interval = setInterval(function(){
			var time = --wait.innerHTML;
			if(time <= 0) {
				location.href = href;
				clearInterval(interval);
			};
		}, 1000);
		})();
	</script>
</body>
</html>

