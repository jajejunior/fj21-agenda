package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
//Contêm a implementação do método executa
public class PrimeiraLogica implements Logica{
	
	//chama o metodo executa e o implementa
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		System.out.println("Executando a lógica");
		System.out.println("Retornando o JSP");
		
		//por enquanto só retorna uma .jsp
		return "primeira-logica.jsp";
		
	}
}
