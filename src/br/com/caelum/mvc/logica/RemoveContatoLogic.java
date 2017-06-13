package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
//Pega o string id que veio com o request e coloca num long
		long id = Long.parseLong(request.getParameter("id"));
		Contato contato = new Contato();
		contato.setId(id);
		
		ContatoDao dao = new ContatoDao();
		dao.exclui(contato);
		System.out.println("Excluindo Contato");
		
/*
 * Aqui eu não compreendi o porquê que eu não posso mais chamar o jsp diretamente
 * */		
		return "mvc?logica=ListaContatosLogic";
	}

}
