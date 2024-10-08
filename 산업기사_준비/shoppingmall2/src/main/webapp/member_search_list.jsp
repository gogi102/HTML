<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "DB.DBConnect" %>
<%@ page import = "java.sql.*" %>
    
  <%
  	int in_custno = Integer.parseInt(request.getParameter("in_custno"));
  	
    String sql = "select custno, custname, phone, address," 
    		+ "to_char(joindate,'yyyy-mm-dd'),"
    		+ "case grade when 'A' then 'VIP' when 'B' then '일반' when 'C' then '직원' end grade,"
    		+ "city  from member_tbl_02 where custno = " + in_custno;
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();

  %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "css/style.css">
<meta charset="UTF-8">
<title>search</title>
</head>
<body>
<header><jsp:include page = "layout/header.jsp"></jsp:include></header>
	<nav><jsp:include page="layout/nav.jsp"></jsp:include></nav>
	<section id="section">
		<h2>회원 조회 결과</h2>
			<%if(rs.next()){%>
				<table class = "table_line">
					<tr>
						<th>회원번호</th>
						<th>회원성명</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>가입일자</th>
						<th>고객등급</th>
						<th>도시코드</th>
					</tr>
					<tr class = "center">
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getDate(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
					</tr>
					<tr class = "center">
						<td colspan = 7><input type = "button" value = "홈으로" onclick = "location.href = 'index.jsp'"></td>
					</tr>
				</table>
			<%} else{%>
				<div class = "divm">
					<p>회원번호 <%= Integer.parseInt(request.getParameter("in_custno"))%>의 회원 정보가 없습니다</p>
					<input type = "button" value = "다시조회" onclick = "location.href = 'member_search.jsp'">
				</div>
			<%}%>
	
</section>
<footer><jsp:include page = "layout/footer.jsp"></jsp:include></footer>
</body>
</html>