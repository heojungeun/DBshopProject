<%@page import="javax.websocket.SendResult"%>
<%@page import="util.testConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>_ctrModify</title>
</head>
<body>

	<%	// 수정정보받기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String job = request.getParameter("job");
		// DB에 저장
		testConn db = new testConn();
		db.connection();
		String sql = "UPDATE CUSTOMER SET "
			+"Custom_pw ='"+pw+"',Address='"+address+"',Telephone='"+phone+"',Sex='"+sex+"',Age='"+age+"',Custom_name='"+name+"',job='"+job
			+"' WHERE Custom_id = '"+id+"'";
		db.insert(sql);
		db.Close();
		session.setAttribute("userSession", id);
		response.sendRedirect("Login.jsp");
	%>	
	
</body>
</html>