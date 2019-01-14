<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukbean/sungjukUpdateProc.jsp</title>
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
		String uname = request.getParameter("uname").trim();
		int kor = Integer.parseInt(request.getParameter("kor").trim());
		int eng = Integer.parseInt(request.getParameter("eng").trim());
		int mat = Integer.parseInt(request.getParameter("mat").trim());
		String addr = request.getParameter("addr").trim();
		int aver = (kor + eng + mat) / 3;

		dto.setSno(sno);
		dto.setUname(uname);
		dto.setKor(kor);
		dto.setEng(eng);
		dto.setMat(mat);
		dto.setAver(aver);
		dto.setAddr(addr);

		int res = dao.updateProc(dto);

		if (res == 0) {
			out.println("<p>성적 수정에 실패했습니다</p>");
			out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
		} else {
			out.println("<script>");
			out.println("   alert('성적이 수정되었습니다');");
			out.println("   location.href='sungjukList.jsp';");//페이지 이동      
			out.println("</script>");
		}
	%>

</body>
</html>