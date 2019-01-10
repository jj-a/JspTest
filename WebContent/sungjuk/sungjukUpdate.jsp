<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjuk/sungjukUpdate.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
<script src="../js/myscript.js"></script>
</head>
<body>
	<h1>* 성적 상세보기 *</h1>
	<p>
		<a href="sungjukList.jsp">[성적목록]</a> <a href="sungjukForm.jsp">[성적쓰기]</a>
	</p>
	<%
		// 사용자가 요청한 sno 가져오기
		// ex. sungjukRead.jsp?sno=2
		int sno = Integer.parseInt(request.getParameter("sno"));

		//Orace DB -------------------------------------------
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "java1113";
		String password = "1234";
		String driver = "oracle.jdbc.driver.OracleDriver";

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);

			StringBuilder sql = new StringBuilder();
			sql.append(" SELECT sno, uname, kor, eng, mat, aver, addr, wdate");
			sql.append(" FROM sungjuk");
			sql.append(" WHERE sno=?");

			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, sno);
			rs = pstmt.executeQuery();
			if (rs.next())
				do {
	%>

	<form method="post" action="sungjukUpdateProc.jsp" onsubmit="return sungjukCheck(this)">
		<input type="hidden" name="sno" value="<%=sno%>">
		<table border="1">
			<tr>
				<th>이름</th>
				<td><input type="text" value=<%=rs.getString("uname")%>
					name="uname" maxlength="10" required autofocus></td>
			</tr>
			<tr>
				<th>국어</th>
				<td><input type="number" value=<%=rs.getInt("kor")%> name="kor"
					size="5" min="0" max="100" placeholder="숫자입력"></td>
			</tr>
			<tr>
				<th>영어</th>
				<td><input type="number" value=<%=rs.getInt("eng")%> name="eng"
					size="5" min="0" max="100" placeholder="숫자입력"></td>
			</tr>
			<tr>
				<th>수학</th>
				<td><input type="number" value=<%=rs.getInt("mat")%> name="mat"
					size="5" min="0" max="100" placeholder="숫자입력"></td>
			</tr>
			<tr>
				<th>주소</th>
				<%String addr=rs.getString("addr");%>
				<td><select name="addr">
						<option value="Seoul" <%if (addr.equals( "Seoul")){out.print("selected");}%>>서울</option>
						<option value="Jeju" <%if (addr.equals("Jeju")){out.print("selected");}%>>제주</option>
						<option value="Suwon" <%if (addr.equals( "Suwon")){out.print("selected");}%>>수원</option>
						<option value="Busan" <%if (addr.equals( "Busan")){out.print("selected");}%>>부산</option>
				</select></td>
			</tr>
			<tr>
				<th>등록일</th>
				<td><%=rs.getString("wdate")%></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="수정">
					<input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
	<%
		} while (rs.next());

			else {
				out.println("자료가 존재하지 않습니다.");
			}

		} catch (Exception e) {
			out.println("실패!!" + e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e) {
			}

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (Exception e) {
			}

			try {
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
			}
		} //try end
			//--------------------------------------------------------
	%>

</body>
</html>