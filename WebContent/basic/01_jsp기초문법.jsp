<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_jsp기초문법.jsp</title>
</head>

<body>
	<!-- 
	.jsp → HTML tag
				CSS						<style></style>
				Javascript			<script></script>
				JSP						<--% jsp code %> Scriptlet

 -->

	<h1>JSP 기본문법</h1>
	<hr>
	대한민국
	<hr>
	<%
		/*
		결과 확인
		http://localhost:9090/soldesk/..		웹root 경로
		실제 경로 soldesk(프로젝트)/ WebContent/..
		*/
		// JSP 코드 작성 영역 (Scriptlet)
		/* 여러줄 주석 */
		//본문영역에 출력 out.print() / out.println()
		// 종결문자 = 세미콜론(;)
		out.println("무궁화");
		out.println(123);
		out.println(5.6);
		out.println('R');

		// HTML 태그를 사용하는 경우 ""안에서 작성
		out.println("<hr>");
		out.println("서울");
		out.println("<br><img src='../images/k2.png' width='30%'>");
	%>
	<hr>
	<img src='../images/k3.png' width='30%'>

	<%-- 스크립트릿 영역 주석 ctrl+shift+/
		out.println("<style> .txt{color:red;} </style>");
		out.println("<h1 class=txt>오필승 코리아</h1>");
	--%>


</body>
</html>