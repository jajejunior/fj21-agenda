package br.com.caelum.mvc.logica;
/**
 * @author Junior
 * @version 1.0
 * */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Logica {
	public void executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
}