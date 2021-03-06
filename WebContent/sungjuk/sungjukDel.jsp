<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjuk/sungjukDel.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
<script src="../js/myscript.js"></script>
</head>
<body>
	<h1>* 성적 삭제 *</h1>
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
			sql.append(" DELETE FROM sungjuk");
			sql.append(" WHERE sno=?");

			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, sno);

			int res = pstmt.executeUpdate();
			if (res == 0) {
		        out.println("<p>성적 삭제에 실패했습니다</p>");
		        out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
			} else {
		        out.println("<script>");
		        out.println("   alert('성적이 삭제되었습니다');");        
		        out.println("   location.href='sungjukList.jsp';");//페이지 이동      
		        out.println("</script>");
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