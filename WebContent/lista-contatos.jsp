<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
 <!-- Importando a taglib jstl.Core Use ctrl+space na url-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<title>Expression language + JSTL</title>
</head>
<body>

<c:import url="cabecalho.jsp"/>
 <br/>
	
	
	<table>
	<!-- cria celulas acima da taela possiilitando dar um nome para as colunas -->
	<caption></caption>
   	<thead>
      <tr>
      	<td><b>ID</b></td>
      	<td><b>NOME</b></td>
      	<td><b>ENDEREÇO</b></td>
      	<td><b>EMAIL</b></td>
      	<td><b>NASCIMENTO</b></td>
      </tr>
   	</thead>
	
	
	
	
	<!-- usa a lista que foi colocada na request em ListaContatosLogic -->
	
	<c:forEach var="contato" items="${contatos}">
		<tr>
			<!-- Expression language capaz de perceber o getAtributo-->
			
			<td>${contato.id}</td>
			<td>${contato.nome}</td>
			<td>${contato.endereco}</td>
			<!-- <td>${contato.email}</td> -->
			<td>
			<c:choose>
				<c:when test="${not empty contato.email}">
					<a href=emailto:${contato.email}>${contato.email}</a>
				</c:when>
			
				<c:otherwise>
					E-mail não informado
				</c:otherwise>
			</c:choose>
			</td>
			<!--<td>${contato.dataNascimento.time}</td> foi trocado por:-->
			<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
			<td><fmt:formatDate value="${contato.dataNascimento.time}" 
			pattern="dd/MM/yyyy"/></td>
			
			<!-- Coluna de remoção -->
			<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}"><img src="img/imgremover.png"> </a></td>
			
		</tr>   
	
	</c:forEach>			
	</table>
	<br/>
	<a href="bemvindo.jsp"><img src="img/imghome.png"></a>
	<c:import url="rodape.jsp"/>
</body>
</html>