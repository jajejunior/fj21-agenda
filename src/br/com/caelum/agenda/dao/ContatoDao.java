package br.com.caelum.agenda.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.caelum.agenda.ConnectionFactory;
import br.com.caelum.agenda.modelo.Contato;

public class ContatoDao {
	private Connection connection;
	
	public ContatoDao() {
		this.connection = new ConnectionFactory().getConnection();
	}
	
	public void adiciona(Contato contato){
		
		String sql = "insert into contatos (nome,endereco,email,dataNascimento) values(?,?,?,?)";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, contato.getNome());
			stmt.setString(2, contato.getEndereco());
			stmt.setString(3, contato.getEmail());
			
			//Data
			stmt.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));
			
			stmt.execute();
			stmt.close();
			
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public List<Contato> getList(){
		
		List<Contato> contatoList = new ArrayList<>();
		try {
			//Cria uma instrução sql contendo o comando sql
			String sql = "select * from contatos";
			//Prepara a instrução junto com a conexão
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			//Cria um ponteiro junto com o stmt
			ResultSet rs = stmt.executeQuery();
			//Percorre os registros
			while(rs.next()){
				Contato contato = new Contato();
				//Seta o objeto com o valor que vem do rs
				contato.setId(rs.getLong("id"));
				contato.setNome(rs.getString("nome"));
				contato.setEndereco(rs.getString("endereco"));
				contato.setEmail(rs.getString("email"));
				
				//Montando a sql.data com util.calendar
				Calendar data = Calendar.getInstance();
				//Seta a data com o valor do ponteiro
				data.setTime(rs.getDate("dataNascimento"));
				
				//Seta o contato com a data calendar
				contato.setDataNascimento(data);
				//Adiciona o objeto na lista
				contatoList.add(contato);
			}
			//Fecha tudo e retorna a lista
			stmt.close();
			rs.close();
			return contatoList;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void exclui(Contato contato){
		
		String sql = "delete from contatos where id=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			//pega o id que já foi setado no contato e atriui ao caracter coringa
			stmt.setLong(1, contato.getId());
			stmt.execute();
			stmt.close();
			System.out.println("Dados removidos com sucesso");
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public void altera(Contato contato){
		//Função de alterar
		String sql = "update contatos set nome=?, endereco=?, email=?, dataNascimento=? where id=?";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, contato.getNome());
			stmt.setString(2, contato.getEndereco());
			stmt.setString(3, contato.getEmail());
			//Preparando a data
			stmt.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));
			stmt.setLong(5, contato.getId());
			
			stmt.execute();
			stmt.close();
			System.out.println("Contato alterado com sucesso");
			
		} catch (SQLException e) {
			System.out.println("Erro ao alterar ");
			e.printStackTrace();
			throw new RuntimeException("Erro no DAO ao excluir"+e);
		}
	}
	
}
