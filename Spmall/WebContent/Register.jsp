<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./Style_login.css" type="text/css">
<link rel="stylesheet" href="./Style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>sign up</title>
</head>
<body>

	<center>
		<div class="login">
			<div class="login-screen">
				<div class="app-title">
					<h6> Join us! </h6>
				</div>
				<div class="login-form">

					<form action="_register.jsp" method = "POST">
						<div class="control-group">
							<input type="text" name="id" class="login-field" value=""
								placeholder="아이디">
						</div>
						<div class="control-group">
							<input type="password" name="pw" class="login-field" value=""
								placeholder="비밀번호">
						</div>
						<div class="control-group">
							<input type="text" name="address" class="login-field" value=""
								placeholder="주소" >
						</div>
						<div class="control-group">
							<input type="text" name="phone" class="login-field" value=""
								placeholder="전화번호('-' 포함)">
						</div>
						<div class="control-group">
							<input type="text" name="sex" class="login-field" value=""
								placeholder="성별">
						</div>
						<div class="control-group">
							<input type="text" name="age" class="login-field" value=""
								placeholder="나이" >
						</div>
						<div class="control-group">
							<input type="text" name="name" class="login-field" value=""
								placeholder="이름"> 
						</div>
						<div class="control-group">
							<input type="text" name="job" class="login-field" value=""
								placeholder="직업">
						</div>

						<input type="submit" value="Join"
							class="btn btn-primary btn-large btn-block">

						<a class="login-link" href="Login.jsp"> 돌아가기 </a>

					</form>
				</div>
			</div>
		</div>

	</center>
</body>
</html>