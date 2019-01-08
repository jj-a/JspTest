<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>06_form기초.jsp</title>
</head>
<body>
<!-- 
  <form> 사용자가 입력한 정보를 서버로 전송하기 위한 양식
  name   : 폼의 이름.   Javascript, jQuery에서 접근시 사용
  id     : 폼의 아이디. Javascript, jQuery에서 접근시 사용
  method : 폼의 전송 방식. get | post방식. 생략시 get방식
  action : 사용자 요청한 정보를 서버가 받아서 처리할 결과페이지
  enctype: 해당폼에서 파일을 첨부해서 서버로 전송하고자 할때
           "multipart/form-data" 추가
//----------------------------------------------------------           
           
 -->  
  <h1>성적입력</h1>
  <form name="sungjukfrm"
        id="sungjukfrm"
        method="post"
        action="formok.jsp">
    이름 : <input type="text"   name="uname" size="10" required>
    <hr>
    국어 : <input type="number" name="kor" required>
    <hr>
    영어 : <input type="number" name="eng" required>
    <hr>
    수학 : <input type="number" name="mat" required>
    <hr>
    <input type="submit" value="전송">
    <input type="reset"  value="취소">    
  </form>  
</body>
</html>





