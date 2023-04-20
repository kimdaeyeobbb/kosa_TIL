<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 테스트</title>
</head>
<body>
<h2>EL의 연산자들</h2>
<hr>
<%--수행결과가 브라우저에게 전송됨--%>
\${200+100} :  ${200+100} <br> 
\${200-100} :  ${200-100} <br>
\${200/100} :  ${200/100} <br>
\${200>100} :  ${200>100} <br>
\${200==100} :  ${200==100} <br>
\${200!=100} :  ${200==100} <br>

<%--EL에서는 꺾쇠괄호(<, >) 대신 얘네를 사용하기도 함--%>
\${ 10 eq 10 } : ${ 10 eq 10 }<br> 
\${ 10 lt 10 } : ${ 10 lt 10 }<br> 
\${ 10 gt 10 } : ${ 10 gt 10 }<br>
\${ 10 le 10 } : ${ 10 le 10 }<br>
\${ 10 ge 10 } : ${ 10 ge 10 }<br>

<%--EL은 %{} 내부에 표현하고 싶은 식을 기재함--%>
\${10 > 5?'A':'B'} : ${10 > 5?'A':'B'}<br>
\${100 + 200 + 300 } : ${100 + 200 + 300 }<br>

<%--EL에서는 덧셈만 지원함. 따라서 문자열 결합을 사용하고 싶으면 +=를 써주면 됨--%>
\${100 += 200 += 300 } : ${100 += 200 += 300 }<br>
\${"EL" += 12 += 34 += "-문자열 결합연산" } : ${"EL" += 12 += 34 += "-문자열 결합연산" }
</body>
</html>