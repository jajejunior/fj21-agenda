<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cabe�alho</title>
</head>
<body>

<!-- Caminho absoluto  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--<c:url value="/img/imgcabecalho.png" var="image"/>-->
<!--<img src="image"/>-->


<img src="<c:url value="/img/imgcabecalho.png"/>"/>


<hr align="left" width="1024" size="1" color=black >
</body>
</html>