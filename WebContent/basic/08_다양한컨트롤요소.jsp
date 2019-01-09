<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_다양한컨트롤요소.jsp</title>
<style>
table {
	border: 1px dotted gray;
}

td, th {
	font-size: 11pt;
	border-left: 1px dotted gray;
	border-bottom: 1px dotted gray;
	padding: 10px 10px 10px 10px;
}
</style>
</head>
<body>

	<h1>다양한 컨트롤 요소들</h1>
	<form action="ok.jsp">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" size=10 name="uid"></td>
			</tr><tr>
				<th>비밀번호</th>
				<td><input type="password" size=10 name="upw"></td>
			</tr><tr>
				<th>이름</th>
				<td><input type="text" size=10 name="uname"></td>
			</tr><tr>
				<th>내용</th>
				<td><textarea cols="20" rows="3" name="message"></textarea></td>
			</tr><tr>
				<th>숫자1</th>
				<td><input type="text" name="num"></td>
			</tr><tr>
				<th>숫자2</th>
				<td><input type="text" name="num"></td>
			</tr><tr>
				<th>숫자3</th>
				<td><input type="text" name="num"></td>
			</tr><tr>
				<th>약관동의</th>
				<td><input type="checkbox" name="agree" value="y"></td>
			</tr><tr>
				<th>성별</th>
				<td><input type="radio" name="gender" value="f" checked>여 
				<input type="radio" name="gender" value="m">남</td>
			</tr>
			<tr>
				<th>통신회사</th>
				<td><select name="telecom">
						<option value="sk">SK
						<option value="kt">KT
						<option value="lg">LG U+
				</select></td>
			</tr><tr>
				<td colspan=2><input type="hidden" name="pagenum" value="3"></td>
			</tr><tr>
				<!-- <form enctype="multipart/form-data"> 추가 -->
				<th>첨부파일 :</th>
				<td><input type="file" name="attach"></td>
			</tr><tr>
				<td colspan=2><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>

</body>
</html>
