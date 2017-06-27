package br.com.caelum.mvc.logica;
/**
 * @author Junior
 * @version 1.0
 * */
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LinkAlteraContatoLogic implements Logica {

	public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RequestDispatcher rd = request.getRequestDispatcher("/altera-contato.jsp");
		rd.forward(request, response);
	}
}
