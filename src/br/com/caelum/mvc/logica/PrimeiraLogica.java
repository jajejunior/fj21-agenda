package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
//Cont�m a implementa��o do m�todo executa
public class PrimeiraLogica implements Logica{
	
	//chama o metodo executa e o implementa
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		System.out.println("Executando a l�gica");
		System.out.println("Retornando o JSP");
		
		//por enquanto s� retorna uma .jsp
		return "primeira-logica.jsp";
		
	}
}
