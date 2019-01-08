<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calcok.jsp</title>
</head>
<body>

	<h1>계산 결과</h1>

	<%
		// 사용자가 입력 요청한 정보 가져오기
		// "3" → 3

		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));

		String op = request.getParameter("op").trim();

		int result1 = 0;
		double result2 = 0.0;

		if (op.equals("+")) result1 = num1 + num2;
		else if (op.equals("-")) result1 = num1 - num2;
		else if (op.equals("*")) result1 = num1 - num2;
		else if (op.equals("/")) result2 = (double) num1 - num2;
		else if (op.equals("%")) result1 = num1 - num2;
	%>
	
	
	<!-- 출력 -->
	
	<table width=100px border="1">
		<tr>
			<td><%=num1%></td>
			<td><%=op%></td>
			<td><%=num2%></td>
			<td>=</td>
			<td><%
				if (op.equals("/"))
					out.println(result2);
				else
					out.println(result1);
			%></td>
		</tr>
	</table>

</body>
</html>