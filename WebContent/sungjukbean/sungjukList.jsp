<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukbean/sungjukList.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
<script src="../js/myscript.js"></script>
</head>
<body>
	<h1>* 성적 목록 *</h1>
	<p>
		<a href="sungjukForm.jsp">[성적쓰기]</a>
	</p>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>등록일</th>
		</tr>
		<%
			// 전체 목록
			ArrayList<SungjukDTO> list = dao.list();
			if (list == null) {
				out.println("<tr>");
				out.println("<tr><td colspan='5'>자료가 존재하지 않습니다.</td></tr>");
				out.println("</tr>");
			} else {

				for (int i = 0; i < list.size(); i++) {
					dto = list.get(i);		
		%>
		<tr>
			<td><a href="sungjukRead.jsp?sno=<%=dto.getSno()%>"><%=dto.getUname()%></a></td>
			<td><%=dto.getKor()%></td>
			<td><%=dto.getEng()%></td>
			<td><%=dto.getMat()%></td>
			<td><%=dto.getWdate().substring(0, 10)%></td>
		</tr>
		<%
				} // for end
			} // else end
		%>
	</table>

</body>
</html>