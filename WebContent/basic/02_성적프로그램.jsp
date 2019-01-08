<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>02_성적프로그램.jsp</title>
	<style>
		table {
			width: 30%;
			border: 1px solid gray;
		}

		td {
			border: 1px solid gray;
			padding: 5px 5px 5px 5px;
		}
	</style>
</head>

<body>
	<h1>성적프로그램</h1>
	<hr>
	<p>&nbsp;</p>

	<%
		String name = "무궁화";
		int kor = 80, eng = 85, mat = 90;
		int aver = (kor + eng + mat) / 3;

		// 1) 일반 출력
		out.println("이름: " + name + "<br>");
		out.println("국어: " + kor + "<br>");
		out.println("영어: " + eng + "<br>");
		out.println("수학: " + mat + "<br>");
		out.println("평균: " + aver + "<br>");

		out.println("<p>&nbsp;</p>");

		// 2) 테이블 출력
		String output = "";
		output += "<table>";
		output += "<tr>";
		output += "<td>이름</td><td>" + name + "</td>";
		output += "</tr><tr>";
		output += "<td>국어</td><td>" + kor + "</td>";
		output += "</tr><tr>";
		output += "<td>영어</td><td>" + eng + "</td>";
		output += "</tr><tr>";
		output += "<td>수학</td> <td>" + mat + "</td>";
		output += "</tr><tr>";
		output += "<td>평균</td><td>" + aver + "</td>";
		output += "</tr>";
		output += "</table>";

		out.println(output);
	%>

	<p>&nbsp;</p>
	
	<!-- 3) 표현식 (Expression) -->
	<table>
		<tr>
			<td>이름</td>
			<td><%=name%></td>
		</tr><tr>
			<td>국어</td>
			<td><%=kor%></td>
		</tr><tr>
			<td>영어</td>
			<td><%=eng%></td>
		</tr><tr>
			<td>수학</td>
			<td><%=mat%></td>
		</tr><tr>
			<td>평균</td>
			<td><%=aver%></td>
		</tr>
	</table>



</body>

</html>