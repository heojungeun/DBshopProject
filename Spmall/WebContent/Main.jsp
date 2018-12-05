<%@page import="java.sql.*"%>
<%@page import="util.testConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./Style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SHOP_HOME</title>
</head>
<body>

	<div class="helloId">
		<%	// 세션 가져와서 이름 띄우기
			String name = session.getAttribute("userSession") + "";
		%>
		<a href="Main.jsp" style="float:left;"> HOME </a>
		<b> <%=name%>님 &nbsp; </b>

		<% if(name.equals("admin")) { %>
		<a href="Page_admin.jsp"> 관리자 </a> |	<%} %>		
		<% if(name.equals("seller")) { %>
		<a href="Page_seller.jsp"> 판매자 </a> |	<%} %>	
		<a href="_logout.jsp"> 로그아웃 </a>
		
	<h1 id="title"> PhaseThreeSHOP </h1>
	</div><br/>

	
	<%
		Connection connection = null;
	    Statement stm = null;
	    PreparedStatement pstmt;
	    ResultSet resultSet = null;
	    
	    String str = "jdbc:mysql://192.168.116.131/SPM";
	    Class.forName("com.mysql.jdbc.Driver");
	
	    connection = DriverManager.getConnection(str, "jun", "1234");
		
		String sql = "SELECT * FROM ITEM";
		pstmt = connection.prepareStatement(sql);
		resultSet = pstmt.executeQuery();
		
			while(resultSet.next()) {
				String code = resultSet.getString("Item_code");
				String item_name = resultSet.getString("Item_name");
				String units = resultSet.getString("Units");
				int std_price = resultSet.getInt("Std_price");
				int icategory_id = resultSet.getInt("Icategory_id");
				int ibrand_id = resultSet.getInt("Ibrand_id");
				int stock = resultSet.getInt("Stock");
			%>
			<div class="box">
				<div class="box-underimage">
					<div class="box-itemname">
						 <%=item_name %>
					</div>
					 <div class="box-itemprice">
					 	<%=std_price %>원
					 </div>
					 <div class="box">
					 	code : <%=code %><br>
					 	units : <%=units %><br>
					 </div>

					<form action="Cart.jsp" class="content-box">
						<input type="hidden" name="code" value="<%=code%>">
						<input type="hidden" name="item" value="<%=item_name%>">
						<input type="hidden" name="price" value="<%=std_price%>">
						<!-- 구매 <input type="checkbox" name="checked"> -->
						수량 <select name="count">
								<option> 1 </option>
								<option> 2 </option>
								<option> 3 </option>
							</select>
	<!-- 					<input type="submit" value="구입하기" onclick="form.action='Cart.jsp';"> -->
						<input class="btn_submit" type="submit" value="구매하기">
					</form>
				</div>
			</div>		
			<%	}
			pstmt.close();
			connection.close();	%>	

</body>
</html>