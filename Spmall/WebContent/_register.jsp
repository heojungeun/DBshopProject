<%@page import="javax.websocket.SendResult"%>
<%@page import="util.testConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%	// 1.�������� �ޱ�
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		// 2.DB�� �����ϱ�
		testConn db = new testConn();
		db.connection();
		String sql = "INSERT INTO people (id,password,name,phone,address)"
				+"values ('"+id+"','"+pw+"','"+name+"','"+phone+"','"+address+"')";
		db.insert(sql);
		db.Close();
		response.sendRedirect("Login.jsp");
	%>	
	
</body>
</html>