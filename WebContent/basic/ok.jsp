<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok.jsp</title>
</head>
<body>

	<h1>다양한 컨트롤 요소 결과</h1>
	<%
		// 2바이트 언어(한글) 인코딩
		request.setCharacterEncoding("UTF-8");

		// 사용자 입력 요청 정보 가져오기
		String uid = request.getParameter("uid").trim();
		String upw = request.getParameter("upw").trim();
		String uname = request.getParameter("uname").trim();
		String message = request.getParameter("message").trim();

		// <textarea>에서 입력한 줄바꿈(Enter)을 <br>로 치환
		message = message.replace("\n", "<br>");
	%>

	<b>입력내용</b>
	<table>
		<tr>
			<td>아이디:</td>
			<td><%=uid%></td>
		</tr><tr>
			<td>비밀번호:</td>
			<td><%=upw%></td>
		</tr><tr>
			<td>이름:</td>
			<td><%=uname%></td>
		</tr><tr>
			<td >내용:</td>
			<td><%=message%></td>
		</tr>
	<%
	// request 객체에 없는 정보 = null
	//out.println("<br>"+request.getParameter("kor"));
	
	String num[]=request.getParameterValues("num");
	
	for(int i=0;i<num.length;i++){
	%>
		<tr>
			<td>숫자<%=i+1%>:</td>
			<td><%=num[i]%></td>
		</tr>
	<%
	}
	%>
	</table>

</body>
</html>
