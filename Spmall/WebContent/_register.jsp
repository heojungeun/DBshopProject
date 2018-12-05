<%@page import="javax.websocket.SendResult"%>
<%@page import="util.testConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>_register</title>
</head>
<body>

	<%	// 1.가입정보 받기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String job = request.getParameter("job");
		// 2.DB에 저장하기
		testConn db = new testConn();
		db.connection();
		String sql = "INSERT INTO CUSTOMER "
				+"values ('"+id+"','"+pw+"','"+address+"','"+phone+"','"+sex+"','"+age+"','"+name+"','"+job+"',NULL)";
		db.insert(sql);
		db.Close();
		response.sendRedirect("Login.jsp");
	%>	
	
</body>
</html>