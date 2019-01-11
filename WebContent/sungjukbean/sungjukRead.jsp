<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukbean/sungjukRead.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
<script src="../js/myscript.js"></script>
</head>
<body>
	<h1>* 성적 상세보기 *</h1>
	<p>
		<a href="sungjukList.jsp">[성적목록]</a> <a href="sungjukForm.jsp">[성적쓰기]</a>
	</p>
	<%
		int sno = Integer.parseInt(request.getParameter("sno"));
		dto = dao.read(sno);
		if (dto == null) {
			out.println("<tr>");
			out.println("<tr><td colspan='5'>자료가 존재하지 않습니다.</td></tr>");
			out.println("</tr>");
		} else {
	%>

	<table border="1">
		<tr>
			<th>이름</th>
			<td><%=dto.getUname()%></td>
		</tr>
		<tr>
			<th>국어</th>
			<td><%=dto.getKor()%></td>
		</tr>
		<tr>
			<th>영어</th>
			<td><%=dto.getEng()%></td>
		</tr>
		<tr>
			<th>수학</th>
			<td><%=dto.getMat()%></td>
		</tr>
		<tr>
			<th>평균점수</th>
			<td><%=dto.getAver()%></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=dto.getAddr()%> <%
 	// 주소를 한글로 바꿔 출력하기
 		String kaddr = "";
 		switch (dto.getAddr()) {
 		case "Seoul":
 			kaddr = "서울";
 			break;
 		case "Jeju":
 			kaddr = "제주";
 			break;
 		case "Suwon":
 			kaddr = "수원";
 			break;
 		case "Busan":
 			kaddr = "부산";
 			break;
 		}
 		out.println(", " + kaddr);
 %></td>
		</tr>
		<tr>
			<th>등록일</th>
			<td><%=dto.getWdate()%></td>
		</tr>

	</table>
	<p>
		<a href="sungjukUpdate.jsp?sno=<%=sno%>">[수정]</a> <a
			href="sungjukDel.jsp?sno=<%=sno%>">[삭제]</a>
	</p>
	<%
		}
	%>

</body>
</html>