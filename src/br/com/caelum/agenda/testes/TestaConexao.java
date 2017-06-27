package br.com.caelum.agenda.testes;
/**
 * @author Junior
 * @version 1.0
 * */
import java.sql.Connection;
import java.sql.SQLException;

import br.com.caelum.agenda.ConnectionFactory;

public class TestaConexao {

	public static void main(String[] args) throws SQLException {
		Connection connection = null;
		
		try {
			connection = new ConnectionFactory().getConnection();
			System.out.println("Conectado com sucesso. :D");
		} catch (RuntimeException e) {
			System.out.println("Erro ao tentar se conectar. :(");
		}finally {
			connection.close();
			System.out.println("Conexão finalizada. ;)");
		}

	}

}
