<%@page import="java.sql.*"%>
<%@page import="util.testConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./Style.css" type="text/css">
<link href="product.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SHOP_DIBI</title>
</head>
<body>

	<nav class="site-header sticky-top py-1">
      <div class="container d-flex flex-column flex-md-row justify-content-between">
      	<%	// id 가져옴
			String name = session.getAttribute("userSession") + "";
		%>
		<!--<a href="Main.jsp" style="float:left;"> HOME </a>  -->
        <a class="py-2" href="Main.jsp">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
        </a>
        
        <a class="py-2 d-none d-md-inline-block" ><%=name%>님</a>
        <% if(name.equals("admin")) { %>
        <a class="py-2 d-none d-md-inline-block" href="Page_admin.jsp">관리자</a> |	<%} %>
        <a class="py-2 d-none d-md-inline-block" href="#">Cart</a>
        <a class="py-2 d-none d-md-inline-block" href="_logout.jsp">로그아웃</a>
        <a class="py-2 d-none d-md-inline-block" href="Ctrmodify.jsp">회원정보수정</a>

      </div>
    </nav>
		
	<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal">Di Bi</h1>
        <p class="lead font-weight-normal">Hello, welcome DB shop.<br>This is Database Phase 3 mission - implement web(with DB)<br>We did our best.</p>
        <a class="btn btn-outline-secondary" href="https://en.wikipedia.org/wiki/Database">What is DB?</a>
      </div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
	

	<div class="container">
		
		<%
		Connection connection = null;
	    Statement stm = null;
	    PreparedStatement pstmt;
	    ResultSet resultSet = null;
	    int cnt = 0;
	    
	    testConn db = new testConn();
		db.connection();
		
		String sql = "SELECT * FROM ITEM";
		resultSet = db.select(sql);
		
			while(resultSet.next()) {
				if(cnt==0 | cnt%3==0){%><div class="card-deck mb-3 text-center"><%}
				String code = resultSet.getString("Item_code");
				String item_name = resultSet.getString("Item_name");
				String units = resultSet.getString("Units");
				int std_price = resultSet.getInt("Std_price");
				int icategory_id = resultSet.getInt("Icategory_id");
				int ibrand_id = resultSet.getInt("Ibrand_id");
				int stock = resultSet.getInt("Stock");
				
		%>
	          <div class="card mb-3 shadow-sm">
	            <div class="card-header">
	              <h4 class="my-0 font-weight-normal"><%=item_name %></h4>
	            </div>
	            <div class="card-body">
	              <h1 class="card-title pricing-card-title"><%=std_price %>원</h1>
	              <ul class="list-unstyled mt-3 mb-4" style="text-align:left;">
	                <li>code : <%=code %></li>
	                <li>units : <%=units %></li>
	                <li>category : <%=icategory_id %></li>
	                <li>brand : <%=ibrand_id %></li>
	                <li>stock : <%=stock %></li>
	                <li>
	                 	 수량
	                    <select name="count">
	                      <option> 1 </option>
	                      <option> 2 </option>
	                      <option> 3 </option>
	                    </select>
	                </li>
	              </ul>
	              <button type="submit" class="btn btn-lg btn-block btn-outline-primary">BUY</button>
	            </div>
	          </div>
			<%	
			cnt++;
			if(cnt%3 == 0){%> </div> <%}
			}
			if(cnt%3 != 0){%> </div> <%}
			db.Close();%>	
			
	</div>
			
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>