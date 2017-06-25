package br.com.caelum.mvc.logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {

		long id = Long.parseLong(request.getParameter("id"));
		Contato contato = new Contato();
		contato.setId(id);
		
		ContatoDao dao = new ContatoDao();
		dao.exclui(contato);
		System.out.println("Excluindo Contato");
		RequestDispatcher rd = request.getRequestDispatcher("mvc?logica=ListaContatosLogic");
		rd.forward(request, response);
	}
}
