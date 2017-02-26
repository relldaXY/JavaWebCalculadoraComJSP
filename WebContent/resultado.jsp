<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resultado</title>
</head>
<body>
<%
String sValorA = request.getParameter("valorA");
String sValorB = request.getParameter("valorB");
String sOpcao = request.getParameter("opcao");
double dValorA = Double.parseDouble(sValorA);
double dValorB = Double.parseDouble(sValorB);

double resultado = 0;

if(sOpcao.equals("+") ){
	resultado = dValorA + dValorB;
}else if(sOpcao.equals("-")){
	resultado = dValorA - dValorB;
}else if(sOpcao.equals("*")){
	resultado = dValorA * dValorB;
}else{
	resultado = dValorA / dValorB;
}
out.print("Resultado: <br>"+resultado);
%>
</body>
</html>