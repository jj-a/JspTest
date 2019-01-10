<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="net.testbean.*"%>
<%-- Java Bean 객체 생성
<jsp:useBean id="객체명" class="패키지명.클래스명" scope=""></jsp:useBean>
주의사항: id가 제대로 생성 안될 수도 있으니 해당 프로젝트 Refresh, Validate, Project Clean 후에 테스트
 --%>
<jsp:useBean id="comp" class="net.testbean.Compute" scope="page"></jsp:useBean>
<%--
 scope="page"				현재 페이지에서만 사용. 생략 시 기본값=page
 scope="request"			다른 페이지에서 공유
 scope="session"			다른 페이지에서 공유
 scope="application"	다른 페이지에서 공유
  --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>testbean/computeok2.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
</head>
<body>
	<h1>계산 결과</h1>
	<h2>3) Java Bean을 이용해서 객체 생성 후 메소드 호출</h2>
	<hr>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));

		out.print(num1 + " + " + num2 + " = " + comp.add(num1, num2));
		out.print("<hr>");
		out.print(num1 + " - " + num2 + " = " + comp.sub(num1, num2));
		out.print("<hr>");
		out.print(num1 + " * " + num2 + " = " + comp.mul(num1, num2));
		out.print("<hr>");
		out.print(num1 + " / " + num2 + " = " + comp.div(num1, num2));
		out.print("<hr>");
		out.print(num1 + " % " + num2 + " = " + comp.mod(num1, num2));
		out.print("<hr>");
	%>



</body>
</html>