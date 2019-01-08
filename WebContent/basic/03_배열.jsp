<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_배열.jsp</title>
<style>
table {
	width: 50%;
	border: 1px solid gray;
}

td, th {
	border: 1px solid gray;
	padding: 5px 5px 5px 5px;
}
</style>
</head>
<body>

	<h1>성적프로그램 (배열)</h1>

	<%
		String name[] = { "네오", "무지", "어피치", "튜브", "프로도" };
		int kor[] = { 95, 95, 70, 75, 80 };
		int eng[] = { 90, 100, 30, 39, 60 };
		int mat[] = { 90, 95, 40, 98, 70 };
		int size = name.length;
		int avr[] = new int[size];
		int rank[] = new int[size];

		for (int i = 0; i < size; i++)
			rank[i] = i + 1;

		// 평균
		for (int i = 0; i < size; i++)
			avr[i] = (kor[i] + eng[i] + mat[i]) / 3;

		// 석차
		int swap;
		for (int i = 0; i < size; i++) {
			for (int j = 0; j < size; j++) {
				if ((avr[i] < avr[j] && rank[i] < rank[j]) || (avr[i] > avr[j] && rank[i] > rank[j])) { // swap
					swap = rank[i];
					rank[i] = rank[j];
					rank[j] = swap;
				}
				/*
				if(avr[i]<avr[j]) rank[i]++;		// 증감
				 */
			}
		}
	%>
	<table>
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>평균</th>
			<th>석차</th>
			<th>합격여부</th>
			<th>별점</th>
			<th>장학생여부</th>
		</tr>
		<%
			for (int i = 0; i < size; i++) {
		%>
		<tr>
			<td><%=name[i]%></td>
			<td><%=kor[i]%></td>
			<td><%=eng[i]%></td>
			<td><%=mat[i]%></td>
			<td><%=avr[i]%></td>
			<td><%=rank[i]%></td>
			<td><%
				if (avr[i] >= 70) {
					if (kor[i] < 40 || eng[i] < 40 || mat[i] < 40) out.print("재시험");
					else out.print("합격");
				}
				else {
					out.print("불합격");
				}
			%></td>
			<td><%
				for (int n = 1; n <= avr[i] / 10; n++) out.print("*");
			%></td>
			<td><%
				if (avr[i] >= 95) out.print("장학생");
			%></td>
		</tr>
		<%
			}
		%>
	</table>


</body>
</html>


