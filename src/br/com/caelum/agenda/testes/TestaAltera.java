
package br.com.caelum.agenda.testes;

import java.util.Calendar;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

/**
 * @author Junior
 * @version 1.0
 */
public class TestaAltera {

	public static void main(String[] args) {
		Contato contato = new Contato();
		contato.setId((long)19);
		contato.setNome("Alberto Roberto");
		contato.setEmail("ar@hotmail.com");
		contato.setEndereco("Av das zicas");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		dao.altera(contato);
		System.out.println("Contato alterado pelo teste");
	}
}
