package br.com.caelum.mvc.logica;
/**
 * @author Junior
 * @version 1.0
 * */
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BemVindoLogic implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RequestDispatcher rd = request.getRequestDispatcher("/bem-vindo.jsp");
		rd.forward(request, response);
	}
}
