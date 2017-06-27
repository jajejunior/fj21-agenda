package br.com.caelum.agenda.testes;
/**
 * @author Junior
 * @version 1.0
 * */
import java.util.Calendar;
import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class TestaAdiciona {

	public static void main(String[] args) {
		Contato contato = new Contato();
		contato.setNome("nome");
		contato.setEndereco("endereco");
		contato.setEmail("email");
		
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		dao.adiciona(contato);
	}
}
