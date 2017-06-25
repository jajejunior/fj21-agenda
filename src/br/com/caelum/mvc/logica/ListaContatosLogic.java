package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ListaContatosLogic implements Logica {

	public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Contato> contatos = new ContatoDao().getList();
		request.setAttribute("contatos", contatos);
		RequestDispatcher rd = request.getRequestDispatcher("lista-contatos.jsp");
		rd.forward(request, response);
	}           
}
