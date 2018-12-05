<%@page import="javax.websocket.SendResult"%>
<%@page import="java.sql.*"%>
<%@page import="util.testConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./Style_login.css" type="text/css">
<link rel="stylesheet" href="./Style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ctrModify</title>
</head>
<body>

	<div class="helloId">
	<h1 id="title"> update your info </h1>
	</div><br/>
	<center>

		<div class="login">
			<div class="login-screen">
				<div class="app-title">
					<h6>update!</h6>
				</div>
				<div class="login-form">
						<%	// 세션 가져와서 이름 띄우기
							String seid = session.getAttribute("userSession") + "";
						
							Connection connection = null;
						    Statement stm = null;
						    PreparedStatement pstmt;
						    ResultSet resultSet = null;
						    
						    testConn db = new testConn();
							db.connection();
							
							String sql = "SELECT * FROM CUSTOMER WHERE Custom_id='"+seid+"'";
							resultSet = db.select(sql);
							
								while(resultSet.next()) {
									int Custom_id = resultSet.getInt("Custom_id");
									int Custom_pw = resultSet.getInt("Custom_pw");
									String Address = resultSet.getString("Address");
									String Telephone = resultSet.getString("Telephone");
									String Sex = resultSet.getString("Sex");
									int Age = resultSet.getInt("Age");
									String Custom_name = resultSet.getString("Custom_name");
									String Job = resultSet.getString("Job");
						%>

					<form action="_ctrmodify.jsp" method = "POST">
						<div class="control-group">
							<input type="text" name="id" class="login-field" value="<%=Custom_id%>"
								placeholder="<%=Custom_id%> (id는 바꿀 수 없음)" readonly>
						</div>
						<div class="control-group">
							<input type="password" name="pw" class="login-field" value=""
								placeholder="pw: <%=Custom_pw %>(숫자만)">
						</div>
						<div class="control-group">
							<input type="text" name="address" class="login-field" value=""
								placeholder="addr: <%=Address %>" >
						</div>
						<div class="control-group">
							<input type="text" name="phone" class="login-field" value=""
								placeholder="call: <%=Telephone %>">
						</div>
						<div class="control-group">
							<input type="text" name="sex" class="login-field" value=""
								placeholder="sex: <%=Sex %> (2글자이하)">
						</div>
						<div class="control-group">
							<input type="text" name="age" class="login-field" value=""
								placeholder="age: <%=Age %>(숫자만)" >
						</div>
						<div class="control-group">
							<input type="text" name="name" class="login-field" value=""
								placeholder="name: <%=Custom_name %>"> 
						</div>
						<div class="control-group">
							<input type="text" name="job" class="login-field" value=""
								placeholder="job: <%=Job %>">
						</div>

						<input type="submit" value="update"
							class="btn btn-primary btn-large btn-block">

						<a class="login-link" href="javascript:history.go(-1)"> 돌아가기 </a>

					</form>
				</div>
			</div>
		</div>
		<%	}
		db.Close();%>
	</center>
</body>
</html>