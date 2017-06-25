package br.com.caelum.mvc.logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
//Contêm a implementação do método executa
public class PrimeiraLogica implements Logica{
	
	//chama o metodo executa e o implementa
	public void executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		System.out.println("Executando a lógica");
		System.out.println("Retornando o JSP");
		
		RequestDispatcher rd = request.getRequestDispatcher("primeira-logica.jsp");
		rd.forward(request, response);
	}
}
