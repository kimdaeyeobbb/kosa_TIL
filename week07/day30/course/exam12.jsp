<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 예제 </title>
<style>
	input {
		margin : 1px;
	}
</style>
</head>
<body>
<%
if (request.getMethod().equals("POST")) {
   if (session.isNew() || session.getAttribute("member_id") == null ) {
      String name = request.getParameter("membername");
      String passwd = request.getParameter("memberpassword");
      if(name.equals("duke") && passwd.equals("1234")) {
    	  session.setAttribute("member_id", name);
		  // 세션 객체 내에  memeber_id라는 이름으로 보관

    	  session.setMaxInactiveInterval(60);
		  // 단위: 초시간
		  // 60초동안 아무 요청하지 않다가 다시 요청하면 자동으로 로그인 상태가 해제되어있을 것임
%>
     	 <script>
  			alert("성공적으로 로그인했습니다!!");
  		 </script>
     	 <h3><%=  name %> 회원님.. 좋은하루 되세요...</h3>
		 <a href="/edu/jspexam/exam13.jsp">로그아웃</a>	
<%
      } else {    	 
%>
			<script>
  				alert("로그인에 실패했습니다 !!");
  			</script>
  			<h2>로그인</h2><hr>
			<form method="post" action="/edu/jspexam/exam12.jsp">
				<input placeholder="계정을 입력하세요" name="membername"><br>
				<input type="password" placeholder="암호를 입력하세요" name="memberpassword"><br>
				<input type="submit"  value="로그인">
			</form>
<%
      }
   }		      
} else if (request.getMethod().equals("GET")) {
	String name = (String)session.getAttribute("member_id") ;
	if (name != null ) {
%>
		 <h3><%=  name %> 회원님.. 좋은하루 되세요...</h3>
	 	 <a href="/edu/jspexam/exam13.jsp">로그아웃</a>	
<%
   	} else {
%>
 		<script>
  			alert("로그인 해주세요!");
  		</script>
		<h2>로그인</h2><hr>
		<form method="post"  action="/edu/jspexam/exam12.jsp">
			<input placeholder="계정을 입력하세요" name="membername"><br>
			<input type="password" placeholder="암호를 입력하세요" name="memberpassword"><br>
			<input type="submit"  value="로그인">
		</form>
<%	
   	}
}
%>			
</body>
</html>
