<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="calc" class="net.testbean.CalcBean" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>testbean/calcOk.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
</head>
<body>
	<h1>계산 결과</h1>
	<h2>3) Java Bean을 이용해서 객체 생성 후 메소드 호출</h2>
	<hr>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
	%>
	
	<table>
	<tr>
	<td>절대값</td>
	<td><%=num%>  →  <%=calc.abs(num)%></td>
	</tr><tr>
	<td>팩토리얼(n!)</td>
	<td><%=num%>  →  <%=calc.fact(num)%></td>
	</tr>
	</table>


</body>
</html>