package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ListaContatosLogic implements Logica {

	//Implementação do método executa
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//Chama o método getList do COntatodao e atribui a uma lista do tipo Contato 
		List<Contato> contatos = new ContatoDao().getList();
		//Joga a lista de contatos dentro do request e define um identificador que será usado na view
		request.setAttribute("contatos", contatos);
		//retorna a lista
		return "lista-contatos.jsp";
	}
}
