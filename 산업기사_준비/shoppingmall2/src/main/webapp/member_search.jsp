<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "css/style.css">
<meta charset="UTF-8">
<title>member_search</title>
	<script type = "text/javascript">
		function checkValue2(){
			if(!document.data.custno2.value){
				alert("회원번호를 입력해주세요")
				return false
			}
			return true
		}
	</script>
</head>
<body>
	<header><jsp:include page="layout/header.jsp"></jsp:include></header>
	<nav><jsp:include page = "layout/nav.jsp"></jsp:include></nav>
	<section id = "section">
		<h2>회원조회</h2>
		<form name = "data" action = "member_search_list.jsp" method = "post" onsubmit = "return checkValue2()">
				<table class = "table_line">
				<tr>
					<th>회원 번호</th>
					<td><input type = "text" name = "in_custno"></td>
				</tr>
				<tr class = "center">
					<td colspan = 2>
						<input type = "button" value = "취소" onclick = "location.href = 'member_list.jsp'">
						<input type = "submit" value = "조회">
					</td>
				</tr>
			</table>
		</form>
		
	</section>
	<footer><jsp:include page = "layout/footer.jsp"></jsp:include></footer>
</body>
</html>