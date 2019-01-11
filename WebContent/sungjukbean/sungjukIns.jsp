<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="net.sungjuk.*"%>
<jsp:useBean id="dto" class="net.sungjuk.SungjukDTO"></jsp:useBean>
<jsp:useBean id="dao" class="net.sungjuk.SungjukDAO"></jsp:useBean>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>sungjukIns/sungjukIns.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
<script src="../js/myscript.js"></script>
</head>
<body>
	<h1>* 성적 결과 페이지 *</h1>
	<p>
		<a href="sungjukForm.jsp">[성적쓰기]</a>
	</p>
	<%
		//한글 인코딩
		request.setCharacterEncoding("UTF-8");
		//입력 정보 가져오기
		String uname = request.getParameter("uname").trim();
		int kor = Integer.parseInt(request.getParameter("kor").trim());
		int eng = Integer.parseInt(request.getParameter("eng").trim());
		int mat = Integer.parseInt(request.getParameter("mat").trim());
		String addr = request.getParameter("addr").trim();
		int aver = (kor + eng + mat) / 3;

		dto.setUname(uname);
		dto.setKor(kor);
		dto.setEng(eng);
		dto.setMat(mat);
		dto.setAver(aver);
		dto.setAddr(addr);

		int res = dao.insert(dto);

		if (res == 0) {
			out.println("<p>성적 입력이 실패했습니다</p>");
			out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
		} else {
			out.println("<script>");
			out.println("   alert('성적이 입력되었습니다');");
			out.println("   location.href='sungjukList.jsp';");//페이지 이동      
			out.println("</script>");
		}
	%>

</body>
</html>