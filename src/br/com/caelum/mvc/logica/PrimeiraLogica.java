package br.com.caelum.mvc.logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
//Cont�m a implementa��o do m�todo executa
public class PrimeiraLogica implements Logica{
	
	//chama o metodo executa e o implementa
	public void executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		System.out.println("Executando a l�gica");
		System.out.println("Retornando o JSP");
		
		RequestDispatcher rd = request.getRequestDispatcher("primeira-logica.jsp");
		rd.forward(request, response);
	}
}
