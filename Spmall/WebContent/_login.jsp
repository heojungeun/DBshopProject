<%@page import="java.sql.*"%>
<%@page import="util.testConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%	// 1.�α��� ���� ����ڰ� �Է��� ���̵�/��й�ȣ
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// 2.DB���� ��ȸ�� ���̵�/��й�ȣ
		int dbId = 0;
		int dbPw = 0;
		ResultSet rs = null;

		testConn db = new testConn();
		db.connection();
		
		String sql = "SELECT Custom_id, Custom_pw FROM CUSTOMER WHERE Custom_id='"+id+"'";
		
		rs = db.select(sql);
		while (rs.next()) {
			dbId = rs.getInt("Custom_id");
			dbPw = rs.getInt("Custom_pw");
		}
		db.Close();
		 
		// 3.ȸ���̸� Session�� �����, MAIN���� �̵��ϱ�
		if (id.equals(Integer.toString(dbId)) && pw.equals(Integer.toString(dbPw))) {
			session.setAttribute("userSession", id);
			response.sendRedirect("Main.jsp");
		} else {
			out.println("<script> alert(\"ȸ�� ������ �����ϴ�\"); history.back(); </script>");
		}
	%>
		
</body>
</html>