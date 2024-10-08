<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "DB.DBConnect" %>
<%@ page import = "java.sql.*" %>
    
<%
	String sql = "select mem.custno,custname, case grade when 'A' then 'VIP' when 'B' then '일반' when 'C' then '직원' end grade, sum(price) from member_tbl_02 mem, money_tbl_02 mon where mem.custno = mon.custno and price is not null group by mem.custno, custname, grade order by sum(price) desc";
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	int sum = 0;
%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "css/style.css">
<meta charset="UTF-8">
<title>sales_list</title>
</head>
<body>
	<header><jsp:include page="layout/header.jsp"></jsp:include></header>
	<nav><jsp:include page = "layout/nav.jsp"></jsp:include></nav>
	<section id = "section">
		<h2>회원매출조회</h2>
		<table class = "table_line">
			<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
			</tr>
			<%
				while(rs.next()){
			%>
				<tr class = "center">
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<%sum += rs.getInt(4); %>
				</tr>
			<%
				} 
			%>
			<tr>
				<th colspan = 3>총합</th>
				<td><%=sum %></td>
			</tr>
		</table>
	</section>
	<footer><jsp:include page = "layout/footer.jsp"></jsp:include></footer>
</body>
</html>