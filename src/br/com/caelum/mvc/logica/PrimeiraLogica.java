package br.com.caelum.mvc.logica;
/**
 * @author Junior
 * @version 1.0
 * */
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica{
	
	public void executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		System.out.println("Executando a lógica");
		System.out.println("Retornando o JSP");
		
		RequestDispatcher rd = request.getRequestDispatcher("primeira-logica.jsp");
		rd.forward(request, response);
	}
}
