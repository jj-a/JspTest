<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>testbean/computeok1.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
</head>
<body>
	<h1>계산 결과</h1>
	<hr>
	<h2>1) JSP 메소드 호출</h2>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));

		out.print(num1 + " + " + num2 + " = " + add(num1, num2));
		out.print("<hr>");
		out.print(num1 + " - " + num2 + " = " + sub(num1, num2));
		out.print("<hr>");
		out.print(num1 + " * " + num2 + " = " + mul(num1, num2));
		out.print("<hr>");
		out.print(num1 + " / " + num2 + " = " + div(num1, num2));
		out.print("<hr>");
		out.print(num1 + " % " + num2 + " = " + mod(num1, num2));
		out.print("<hr>");
	%>

	<%!
	public int add(int a, int b) {
		return a + b;
	}

	public int sub(int a, int b) {
		return a - b;
	}

	public int mul(int a, int b) {
		return a * b;
	}

	public int div(int a, int b) {
		return a / b;
	}

	public int mod(int a, int b) {
		return a % b;
	}
	%>



</body>
</html>