package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Interface que obriga a implemtação do método executa.
//Será utilizada pela classe PrimeiraLógica
public interface Logica {
	//Recebe como parametro as requisições e resposta do browser
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
}