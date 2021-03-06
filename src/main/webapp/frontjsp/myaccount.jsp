<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<base href="<%=basePath%>"></base>
<meta charset="utf-8">
<meta name="description" content="人才招聘" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- Mobile Meta -->
<link rel="shortcut icon" href="frontjsp/assets/images/favicon.ico" />
<title>招聘岗位</title>

<script type="text/javascript">
	if (!window.applicationCache) {
		self.location = "validateHtml5.do";
	}
</script>

<link href="frontjsp/assets/css/bootstrap.css" rel="stylesheet" />
<link href="frontjsp/assets/css/font-awesome.css" rel="stylesheet" />
<link href="frontjsp/assets/css/style.css" rel="stylesheet" />
<link href="frontjsp/assets/css/blue.css" rel="stylesheet" />
<link href="frontjsp/assets/css/jquery.toastmessage.css"
	rel="stylesheet" />

</head>
<script type="text/javascript" src="frontjsp/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="frontjsp/assets/js/bootstrap.min.js"></script>

<body class="front">
	<div class="page-wrapper">
		<!-- header-top start -->
		<!-- ================ -->
		<div class="header-top">
			<div class="container">
				<div class="col-xs-2 col-sm-6"></div>
				<div class="col-xs-10 col-sm-6">

					<!-- header-top-second start -->
					<!-- ================ -->
					<div id="header-top-second" class="clearfix">

						<!-- header top dropdowns start -->
						<!-- ================ -->
						<div class="header-top-dropdown">
							<div class="btn-group dropdown" style="display: none" id="news">
								<button type="button" class="btn" onclick="newsClick();"
									id="blink">
									<i class="fa fa-user"></i> 新回复
								</button>
							</div>
							<div class="btn-group dropdown" style="display: none"
								id="welcome">
								<button type="button" class="btn"
									onclick="location.href='myInfo.do';">
									<i class="fa fa-search"></i> ${user.username }
								</button>
							</div>
							<div class="btn-group dropdown">
								<button type="button" class="btn dropdown-toggle"
									onclick="location.href='logout.do'">
									<i class="fa fa-user"></i> 退出
								</button>
							</div>
							<div class="btn-group dropdown">
								<!-- <a class="btn" target="_blank"
									style="padding: 8px 10px; margin: 0; font-size: 12px; color: #999; text-align: center; min-width: 0; background-color: transparent;"
									href="index.jsp"><i class="fa fa-home"></i> 首页</a> -->
								<button type="button" class="btn dropdown-toggle"
									onclick="location.href='index.jsp'">
									<i class="fa fa-home"></i> 首页
								</button>
							</div>
						</div>
						<!--  header top dropdowns end -->

					</div>
					<!-- header-top-second end -->
				</div>
			</div>
		</div>
		<!-- header-top end -->

		<!-- header start (remove fixed class from header in order to disable fixed navigation mode) -->
		<!-- ================ -->
		<header class="header fixed clearfix">
			<div class="container">
				<div class="col-md-4">
					<!-- header-left start -->
					<!-- ================ -->
					<div class="header-left clearfix">

						<!-- logo -->
						<div class="logo">
							<a href="index.jsp"><img id="logo"
								src="frontjsp/assets/images/index_logo.jpg" alt=""></a>
						</div>

						<!-- name-and-slogan -->
						<div class="site-slogan"></div>

					</div>
					<!-- header-left end -->
				</div>

				<div class="col-md-8">
					<!-- header-right start -->
					<!-- ================ -->
					<div class="header-right clearfix">

						<!-- main-navigation start -->
						<!-- ================ -->
						<div class="main-navigation animated">

							<!-- navbar start -->
							<!-- ================ -->
							<nav class="navbar navbar-default" role="navigation">
								<div class="container-fluid">

									<!-- Toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle"
											data-toggle="collapse" data-target="#navbar-collapse-1">
											<span class="sr-only">Toggle navigation</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>
									</div>

									<input type="hidden" id="active_bar" value="campus">
									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="navbar-collapse-1">
										<ul class="nav navbar-nav navbar-right">
											<li class="bar_li" id="home_bar"><a href="index.jsp">招聘首页</a></li>

											<li class="bar_li" id="society_bar"><a
												href="frontjsp/poslist.do">招聘岗位</a></li>
											<li class="bar_li" id="personal_bar"><a href="myInfo.do">我的应聘</a></li>
											<li class="bar_li" id="personal_bar"></li>

										</ul>
									</div>
								</div>
							</nav>
							<!-- navbar end -->

						</div>
						<!-- main-navigation end -->

					</div>
					<!-- header-right end -->

				</div>
			</div>
		</header>
		<!-- header end -->
		<script language="javascript"> 
window.onload = function() {
	var readStatus = "";
	if(readStatus == 1){
		document.getElementById("news").style.display="inline-block";
		setInterval("changeColor()",200); 
	}else{
		document.getElementById("welcome").style.display="inline-block";
	} 
};
function changeColor(){ 
var color="#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray"; 
color=color.split("|"); 
document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)]; 
} 
function newsClick(){
	location.href="myQuestion.do";
	
}
</script>
		<section class="main-container">
			<div class="container">
				<script type="text/javascript">
	$(function() {
		setActiveLeftBar();
	});

	function setActiveLeftBar() {
		$(".active_bar").removeClass("active");
		var left_active_bar = $("#left_bar").val();
		$("#my_" + left_active_bar).addClass("active");
	}
	/*
	resume -- 简历信息
	apply -- 应聘信息
	account -- 账户信息
	question -- 留言板
	hotpot -- 热点问题
	*/
</script>


				<!-- sidebar start -->
				<aside class="col-md-2">
					<div class="sidebar">
						<div class="block clearfix">
							<h3 class="title">我的应聘</h3>
							<div class="separator"></div>
							<input type="hidden" id="left_bar" value="account">
							<nav>
								<ul class="nav nav-pills nav-stacked">
									<li class="active_bar" id="my_resume"><a
										href="myRecruit.do"><img
											src="frontjsp/assets/images/resume.png" style="float: left;">&nbsp;简历信息</a></li>
									<li class="active_bar" id="my_apply"><a
										href="myApply.do"><img
											src="frontjsp/assets/images/yingpin.png" style="float: left;">&nbsp;应聘信息</a></li>
									<li class="active_bar active" id="my_account"><a
										href="myAccount.do"><img
											src="frontjsp/assets/images/account.png" style="float: left;">&nbsp;账户信息</a></li>
									<li class="active_bar" id="my_question"><a
										href="myQuestion.do"><img
											src="frontjsp/assets/images/liuyanban.png" style="float: left;">&nbsp;我的留言</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</aside>
				<!-- sidebar end -->
				<div class="main col-md-10">
					<!-- tabs start -->
					<div class="tabs-style-2">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a
								href="myAccount.do#h2tab1"
								id="tab1" role="tab" data-toggle="tab"><i
									class="fa fa-user pr-5"></i>修改密码</a></li>
							<li><a
								href="myAccount.do#h2tab2"
								id="tab2" role="tab" data-toggle="tab"><i
									class="fa fa-cog pr-5"></i>信息绑定</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane fade in active" id="h2tab1">
								<form class="form-horizontal" role="form" method="post"
									id="chgpwd_form"
									do="chgpwd.do"
									novalidate="novalidate">
									<div class="col-lg-12">
										<div class="form-group">
											<label for="oldPwd" class="col-md-3 control-label">旧密码<small
												class="text-default">*</small></label>
											<div class="col-md-9">
												<input type="password" class="form-control" id="oldPwd"
													name="oldPwd" autocomplete="off" placeholder="旧密码">
											</div>
										</div>
										<div class="form-group">
											<label for="newPwd" class="col-md-3 control-label">新密码<small
												class="text-default">*</small></label>
											<div class="col-md-9">
												<input type="password" class="form-control" id="newPwd"
													name="newPwd" autocomplete="off" placeholder="新密码">
											</div>
										</div>
										<div class="form-group">
											<label for="newPwd2" class="col-md-3 control-label">确认新密码<small
												class="text-default">*</small></label>
											<div class="col-md-9">
												<input type="password" class="form-control" id="newPwd2"
													name="newPwd2" autocomplete="off" placeholder="再次输入新密码">
											</div>
										</div>
										<div class="form-group">
											<label for="inputVerifyCode"
												class="col-sm-2 control-label col-sm-offset-1">验证码<small
												class="text-default">*</small></label>
											<div class="col-md-9">
												<input type="text" autocomplete="off" name="imgcode"
													class="form-control" id="inputVerifyCode" maxlength="5"
													placeholder="5位数字、字母组合">
											</div>
										</div>
										<div class="form-group">
											<div class="col-md-9 col-md-offset-3">
												<img
													style="cursor: pointer; margin-right: 10px; width: 250px; height: 90px;"
													onclick="refreshImage(true);return false;" id="randomImg"
													border="1" src="imgcodeController/kaptcha-image.do">
												<a href="javascript:;"
													style="float: right; margin-top: -20px; margin-right: 380px;"
													onclick="changeVerifyCode(this)"; return false;">看不清？换一张</a>
													
											</div>
										</div>
										<div class="form-group">
											<div class="col-md-9 col-md-offset-3">
												<button class="btn btn-default radius col-sm-offset-5"
													type="submit">修改</button>
											</div>
										</div>
									</div>
								</form>
							</div>
							<div class="tab-pane fade" id="h2tab2">
								<form class="form-horizontal" role="form" method="post"
									id="bindinfo_form"
									do="bindUserInfo.do"
									novalidate="novalidate">
									<div class="col-lg-12">
										<div class="form-group">
											<label for="userinfo" class="col-md-3 control-label">绑定手机号<small
												class="text-default">*</small></label>
											<div class="col-md-9">
												<input type="text" class="form-control" id="userinfo"
													name="userinfo" autocomplete="off" placeholder="" value="">
											</div>
										</div>
										<div class="form-group">
											<label for="inputBindCode" class="col-sm-3 control-label">验证码<small
												class="text-default">*</small></label>
											<div class="col-md-5">
												<input type="text" name="bindcode" autocomplete="off"
													class="form-control" style="float: left;"
													id="inputBindCode" maxlength="6" placeholder="6位数字"
													value="">
												<div id="verifyCode"
													style="margin-top: 10px; display: none;">
													<img
														style="cursor: pointer; margin-right: 10px; width: 250px; height: 90px;"
														onclick="refreshImage(false);return false;" id="bindImg"
														border="1" src="imgcodeController/kaptcha-image.do">
													<a href="javascript:;"
														style="float: right; margin-top: -20px; margin-right: 380px;"
														onclick="changeVerifyCode(this);return false;">看不清？换一张</a>
												</div>
												<div id="verifyMsgCode" style="">
													<input type="button" class="form-control"
														style="float: right; background-color: #3d78d8; color: #fff !important;"
														id="msgbtn" value="获取短信验证码">
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-md-9 col-md-offset-3">
												<button class="btn btn-default radius col-sm-offset-5"
													type="submit">绑定</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- tabs end -->
				</div>
			</div>
		</section>
		<footer id="footer" style="right: 0px; left: 0px; bottom: 0px">
			<div class="footer">
				<div class="container">
					<div class="row">
						<div class="text-center" style="font-size: 11px;">
							<p style="margin-bottom: 10px !important;">
								<a href="index.jsp/" target="_blank">********有限公司</a>&nbsp;版权所有&nbsp;&nbsp;*********
							</p>
							<p style="margin-bottom: 10px !important;">地址：************************，&nbsp;&nbsp;邮编：000000</p>
						</div>
					</div>
				</div>
			</div>
		</footer>

		<script type="text/javascript">
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?a31ee59f81ee6daa5a8952145159315b";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
</script>

	</div>

	<script type="text/javascript">

		$(document).ready(function() {
			var bindtype = "";
			if(bindtype != null && bindtype != ""){
				$("#tab2").trigger("click");
			}
			var login_type = "email";
			var userinfo = "";
			if(login_type == "email"){
				userinfo = "neu_tianhc@126.com";
				$("#verifyMsgCode").show();
				$("#verifyCode").hide();
				$("#verifyMsgCode").parent().removeClass("col-md-9").addClass("col-md-5");
				$("#inputBindCode").attr('placeholder','6位数字').attr("maxlength","6").css('float','left');
				$("#inputBindCode-error").css('margin-top','-5px').css('margin-right','-110px');
			}else{
				userinfo = "18304010890";
				$("#verifyMsgCode").hide();
				$("#verifyCode").show();
				$("#verifyMsgCode").parent().removeClass("col-md-5").addClass("col-md-9");
				$("#inputBindCode").attr('placeholder','5位数字、字母组合').attr("maxlength","5").css('float','none');
				$("#inputBindCode-error").css('margin-top','-30px').css('margin-right','180px');
			}

			$.ajax({
				url:"getBindInfo.do",
				type:"post",
				dataType:"json",
				success:function(data){
					if(login_type == "email"){
						$("#userinfo").val(data.mobile);
					}else{
						$("#userinfo").val(data.email);
					}
				},
				data:"userinfo=" + userinfo
			});

			var operator = "";
			if(operator == "bind"){
				$("#tab2").trigger("click");
			}

			$("#msgbtn").click(function(){
				//获取短信验证码
				var userinfo = $("#userinfo").val();
				var options = {
						url:"sendSmsCode.do",
						type:"post",
						dataType:"json",
						success:function(data){
							if(data.code == "error"){
								NFCommon.util.showError("验证码发送失败，请稍候重试", 2000);
							}
						},
						data:"mobile=" + userinfo
				};
				$.ajax(options);
				time($(this));
			});

			var wait = 60;
			function time(btn) {
		        if (wait == 0) {
		            btn.removeAttr("disabled");
		            btn.css('background-color','#3d78d8');
		            btn.val("获取验证码");
		            wait = 60;
		        } else {
		        	btn.attr("disabled", true);
		        	btn.css('background-color','#666666');
		            btn.val(wait + "秒后重新获取");
		            wait --;
		            setTimeout(function () {
		                time(btn);
		            },1000);
		        }
		    }

			$("#chgpwd_form").validate({
				rules : {
					oldPwd : {
						required : true,
						rangelength : [ 6, 20 ]
					},
					newPwd : {
						required : true,
						rangelength : [ 6, 20 ]
					},
					newPwd2 : {
						required : true,
						equalTo : "#newPwd"
					},
					imgcode : {
						required : true
					}
				},
				messages : {
					oldPwd : {
						required : "旧密码不能为空",
						rangelength : "密码须为6-20个任意字符组合",
					},
					newPwd : {
						required : "新密码不能为空",
						rangelength : "密码须为6-20个任意字符组合",
					},
					newPwd2 : {
						required : "请输入确认新密码",
						equalTo : "两次输入密码不一致"
					},
					imgcode : {
						required : "验证码须为5位数字、字母组合"
					}
				}
			});

			$("#bindinfo_form").validate({
				rules : {
					userinfo : {
						required : true
					},
					bindcode : {
						required : true
					}
				},
				messages : {
					userinfo : {
						required : "绑定信息不能为空"
					},
					bindcode : {
						required : "验证码不能为空"
					}
				}
			});
		});

		function changeVerifyCode(img){
	        img.src = "imgcodeController/kaptcha-image.do?"+Math.floor(Math.random()*100);   
		}
		
		function refreshImage(status) {
			if(status == true){
				document.getElementById("randomImg").setAttribute("src", "getImgCode.do?r="+Math.random());
			}else{
				document.getElementById("bindImg").setAttribute("src", "getImgCode.do?r="+Math.random());
			}
		}
	</script>
	<script type="text/javascript" src="frontjsp/assets/js/jquery.validate.js"></script>
	<script type="text/javascript" src="frontjsp/assets/js/jquery.toastmessage.js"></script>
	<script type="text/javascript">
			$(function(){
				/*
				active_bar: 
				home -- 招聘首页
				school -- 校园招聘
				society -- 社会招聘
				notice -- 重要公告
				personal -- 我的应聘
				 */
				$(".bar_li").removeClass("active");
				var active_bar = $("#active_bar").val();
				$("#" + active_bar + "_bar").addClass("active");
			});
		</script>

</body>
</html>