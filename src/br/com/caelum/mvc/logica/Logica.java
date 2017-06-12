package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Interface que obriga a implemta��o do m�todo executa.
//Ser� utilizada pela classe PrimeiraL�gica
public interface Logica {
	//Recebe como parametro as requisi��es e resposta do browser
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
}