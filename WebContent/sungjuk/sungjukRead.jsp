<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjuk/sungjukRead.jsp</title>
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
			if (rs.next()){
				do {
	%>

	<table border="1">
		<tr>
			<th>이름</th>
			<td><%=rs.getString("uname")%></td>
		</tr><tr>
			<th>국어</th>
			<td><%=rs.getInt("kor")%></td>
		</tr><tr>
			<th>영어</th>
			<td><%=rs.getInt("eng")%></td>
		</tr><tr>
			<th>수학</th>
			<td><%=rs.getInt("mat")%></td>
		</tr><tr>
			<th>평균점수</th>
			<td><%=rs.getInt("aver")%></td>
		</tr><tr>
			<th>주소</th>
			<td><%=rs.getString("addr")%>
			<%
				// 주소를 한글로 바꿔 출력하기
				String kaddr="";
			
				switch(rs.getString("addr")){
				case "Seoul": kaddr="서울"; break;
				case "Jeju": kaddr="제주"; break;
				case "Suwon": kaddr="수원"; break;
				case "Busan": kaddr="부산"; break;
				}
				out.println(", "+kaddr);
			%>
			</td>
		</tr><tr>
			<th>등록일</th>
			<td><%=rs.getString("wdate")%></td>
		</tr>

	</table>
	<p>
		<a href="sungjukUpdate.jsp?sno=<%=sno%>">[수정]</a> <a href="sungjukDel.jsp?sno=<%=sno%>">[삭제]</a>
	</p>
	<%
		} while (rs.next());
				
			}else {
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