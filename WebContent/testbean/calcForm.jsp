<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>testbean/calcForm.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
</head>
<body>
	<h1>숫자 연산</h1>
	<hr>
	<form action="calcOk.jsp">
		<table>
			<tr>
				<td>숫자</td>
				<td><input type="text" name=num size="3"></td>
			</tr><tr>
				<td colspan=2><input type="submit" value="계산"></td>
			</tr>
		</table>
	</form>

</body>
</html>