<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
       
<%@page import="br.com.caelum.agenda.modelo.*"%>
<%@page import="br.com.caelum.agenda.dao.*" %>
<%@page import="java.util.List"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<title>Expression language + JSTL</title>
</head>
<body>

<%

ContatoDao dao = new ContatoDao();
List<Contato> contatos = dao.getList();

for(Contato contato : contatos){%>
	
	
			<a href="mailto:<%=contato.getEmail()%>?subject=Free chocolate 
			&body= Procure um de nossos representantes e solicite já o seu 
			delicioso chocolate."><%=contato.getEmail()%></a> 
	
			
			
			
<%} %>
</body>
</html>