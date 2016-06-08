<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HSCNCloud</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #990000;
}

.header {
	width: 100%;
	height: 41px;
	background-color:#000000
}

.center {
	width: 100%;
	height: 532px;
	background-color:#ffffff
}

.login_right {
	float: right;
	width: 100%;
	height: 100%;
}

.login_left {
	float: right;
	width: 40%;
	height: 100%;
}

.login_titletop {
	margin-left: 450px;
	font-family: PMingLiu, Helvetica, sans-serif;
	font-size: 24px;
	height: 70px;
	line-height: 36px;
	color: #000000;
	font-weight: bold;
}


.login_title {
	margin-left: 435px;
	font-family: PMingLiu, Helvetica, sans-serif;
	font-size: 14px;
	height: 36px;
	line-height: 36px;
	color: #000000;
	font-weight: bold;
}

.login_info {
	margin-left: 435px;
	font-family: PMingLiu, Helvetica, sans-serif;
	font-size: 12px;
	height: 36px;
	line-height: 36px;
	color: #000000;
}

.login_btn {
	margin-left: 550px;
	font-family: PMingLiu, Helvetica, sans-serif;
	font-size: 12px;
	height: 36px;
	line-height: 36px;
	color: #000000;
}

.login_cookie {
	margin-left: 435px;
	font-family: PMingLiu, Helvetica, sans-serif;
	font-size: 12px;
	height: 20px;
	line-height: 20px;
	color: #000000;
}

.login_input {
	width: 188px;
	height: 20px;
	margin-left: 30px;
	border: 1px solid #7F9DB9;
	vertical-align: middle;
}

.login_select {
	width: 150px;
	height: 20px;
	border: 1px solid #7F9DB9;
	vertical-align: middle;
}

.login_code {
	width: 70px;
	height: 20px;
	margin-left: 30px;
	border: 1px solid #7F9DB9;
	vertical-align: middle;
}

.btn {
	width: 60px;
	height: 25px;
	border-width: 0px;
	background-image: url(images/btn-bg2.gif);
	letter-spacing: 3px;
	margin-right: 70px;
	cursor: pointer;
}

.login_info img {
	vertical-align: middle;
	cursor: pointer;
}

.width_lbl {
	width: 520px;
}

.errInfo {
	display: none;
	color: red;
}

.logo {
	width: 100%;
	height: 50px;
	background: url(images/logo2.png) no-repeat;
	_background: none;
	_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='images/logo2.png';
	)
}

.left_txt {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 25px;
	color: #666666;
}

.bottom {
	width: 100%;
	height: 41px;
	background-color:#000000
}
</style>
</head>
<body>
	<div
		style="width: 100%; min-width: 1280px; height: 645px; position: absolute; top: 50%; left: 50%; margin-top: -320px; margin-left: -50%;">
		<div class="header"></div>
		<form action="login.do" method="post" name="loginForm"
			onsubmit="return check();">
			<input name="username" id="username" value="" type="hidden">
			<input name="address" id="address" value="" type="hidden"> <input
				name="password" id="password" value="" type="hidden"> <input
				name="type" id="password" value="" type="hidden">
			<div class="center">
				<div class="login_right">
					<div style="width: 100%; height: auto; margin-top: 100px;">
						<div class="login_titletop">
							<label id="login_string">浙&nbsp;江&nbsp;日&nbsp;立&nbsp;云&nbsp;计&nbsp;算&nbsp;平&nbsp;台&nbsp;</label><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<label id="login_string_sysname_right">HSCNCloud</label>
						</div>
						
						<div class="login_info">
							<table>
								<tbody>
									<tr>
										<td width="80px;"><label id="login_string_username_right"
											style="font-size: 13px">用户名：</label></td>
										<td><input name="username_right" id="username_right"
											class="login_input" value="" type="text"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="login_info">
							<table>
								<tbody>
									<tr>
										<td width="80px;"><label id="login_string_password_right"
											style="font-size: 13px">密 码：</label></td>
										<td><input name="password_right" id="password_right"
											class="login_input" value="" type="password"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- <div class="login_info">
					<label>验证码：</label><input type="text" name="code" id="code" class="login_code"/>&nbsp;&nbsp;
					<img id="codeImg" alt="点击更换" title="点击更换" src=""/>
					&nbsp;<span id="codeerr" class="errInfo"></span>
				</div>
				 -->
						<div class="login_cookie">
							<table>
								<tbody>
									<tr>
										<td width="97px;"><span
											style="font-size: 12px; color: black;"><label
												id="login_string_rememberPassword_right"
												style="font-size: 13px">记住密码：</label></span></td>
										<td>&nbsp;&nbsp;&nbsp;<input id="saveCookie_right"
											value="" type="checkbox"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<br>
						<div class="login_btn">
							<input id="login_string_loginBtn_right" name="loginBtn_right"
								value="登录" class="btn" onclick="javascript:checkright()"
								type="submit"> <input id="login_string_cancelBtn_right"
								name="cancelBtn_right" value="取消" class="btn" type="reset">
						</div>
						<br> <br>
						<div class="login_info">
							<table>
								<tbody>
									<tr>
										<td width="580px;">
											<!--<label id="login_string_memo_right" style="font-size: 13px" >※CT以外的人员(CHI、DCOE、CXEE)请从右侧登录系统，谢谢配合！</label></td>  -->
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</form>
			<div class="bottom"></div>
	</div>
</body>
</html>