<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>testbean/computeForm.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
</head>
<body>
	<h1>계산기</h1>
	<hr>
	
	<h3>1) JSP 메소드 호출</h3>
	<form action="computeok1.jsp">
		<table>
			<tr>
				<td>숫자1</td>
				<td><input type="text" name=num1 size="3"></td>
			</tr><tr>
				<td>숫자2</td>
				<td><input type="text" name=num2 size="3"></td>
			</tr><tr>
				<td colspan=2><input type="submit" value="계산"></td>
			</tr>
		</table>
	</form>
	
	<p>&nbsp;</p>
	
	<h3>2) new 연산자를 이용하여 객체 생성 후 메소드 호출</h3>
	<form action="computeok2.jsp">
		<table>
			<tr>
				<td>숫자1</td>
				<td><input type="text" name=num1 size="3"></td>
			</tr><tr>
				<td>숫자2</td>
				<td><input type="text" name=num2 size="3"></td>
			</tr><tr>
				<td colspan=2><input type="submit" value="계산"></td>
			</tr>
		</table>
	</form>
	
	<p>&nbsp;</p>
	
	<h3>3) Java Bean을 이용해서 객체 생성 후 메소드 호출</h3>
	<form action="computeok3.jsp">
		<table>
			<tr>
				<td>숫자1</td>
				<td><input type="text" name=num1 size="3"></td>
			</tr><tr>
				<td>숫자2</td>
				<td><input type="text" name=num2 size="3"></td>
			</tr><tr>
				<td colspan=2><input type="submit" value="계산"></td>
			</tr>
		</table>
	</form>

</body>
</html>