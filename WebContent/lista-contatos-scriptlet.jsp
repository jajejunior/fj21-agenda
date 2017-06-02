<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.caelum.agenda.dao.ContatoDao"%>
<%@page import="br.com.caelum.agenda.modelo.Contato"%>
<%@page import="java.text.SimpleDateFormat"%> 
    
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Contatos Scriptlet</title>

   <style type="text/css">
        /*css global tabela*/
        .full_table_list{width: 850px;border-collapse: collapse;}
        
        /*colocando bordas nas colunas*/
        .full_table_list td{border:0px blue solid;}
        
        /*colocando bordas nas linhas*/
        .full_table_list tr{border:0px black solid;}
         
        /*Definido cor das linhas pares*/
        .full_table_list tr:nth-child(even) {background: #F4FBFF;}
         
        /*Definindo cor das Linhas impáres*/
        .full_table_list tr:nth-child(odd) {background: #FFFFFF;} 
        
        /*.full_table_title tr{background: #FFFFFF; color: red}*/
     
	
}
               
    </style>


</head>
<body>
	<h3>Lista de contatos:</h3> <br/>
	<table class="full_table_list" rules="cols">
		<thead >
      		<tr >
      			<td bgColor="#E6E6E6"> <b>ID        </b> </td> 
      			<td bgColor="#E6E6E6"> <b>NOME      </b> </td> 
      			<td bgColor="#E6E6E6"> <b>ENDEREÇO  </b> </td> 
      			<td bgColor="#E6E6E6"> <b>EMAIL     </b> </td> 
      			<td bgColor="#E6E6E6"> <b>NASCIMENTO</b> </td>
      		</tr>
   		</thead>
   		
	<%
	SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
	
	ContatoDao dao = new ContatoDao();
	List<Contato> contatos =  dao.getList();
	for (Contato contato : contatos){
	%>
		
	
		
		<tr>
			<td><%=contato.getId()%></td>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=sdf.format(contato.getDataNascimento().getTime())%></td>
		</tr>
		
	<%} %>
	
	</table>
	<br/>
	<a href="bemvindo.jsp">Voltar</a>
</body>
</html>