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
								placeholder="���̵�">
						</div>
						<div class="control-group">
							<input type="password" name="pw" class="login-field" value=""
								placeholder="��й�ȣ">
						</div>
						<div class="control-group">
							<input type="text" name="address" class="login-field" value=""
								placeholder="�ּ�" >
						</div>
						<div class="control-group">
							<input type="text" name="phone" class="login-field" value=""
								placeholder="��ȭ��ȣ('-' ����)">
						</div>
						<div class="control-group">
							<input type="text" name="sex" class="login-field" value=""
								placeholder="����">
						</div>
						<div class="control-group">
							<input type="text" name="age" class="login-field" value=""
								placeholder="����" >
						</div>
						<div class="control-group">
							<input type="text" name="name" class="login-field" value=""
								placeholder="�̸�"> 
						</div>
						<div class="control-group">
							<input type="text" name="job" class="login-field" value=""
								placeholder="����">
						</div>

						<input type="submit" value="Join"
							class="btn btn-primary btn-large btn-block">

						<a class="login-link" href="Login.jsp"> ���ư��� </a>

					</form>
				</div>
			</div>
		</div>

	</center>
</body>
</html>