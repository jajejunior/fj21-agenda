package br.com.caelum.mvc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.mvc.logica.Logica;
/*O valor do parametro "logica" est� sendo passado na URL
 * 
 * http://localhost:8080/fj21-agenda/mvc?logica=PrimeiraLogica
 * */
@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String parametro = request.getParameter("logica");
		String nomeDaClasse = "br.com.caelum.mvc.logica."+parametro;
	/*isso � para chamar o m�todo executa e colocar dentro do request*/
		try {			
			
			Class<?> classe = Class.forName(nomeDaClasse);//Pega uma classe
			//Cria um objeto do tipo L�gica
			Logica logica = (Logica)classe.newInstance();//Cria uma instancia dessa classe	
			String pagina = logica.executa(request, response);//Chama o m�todo executa encima da instancia da clase acima
			request.getRequestDispatcher(pagina).forward(request, response);//Forward encaminha a requisi��o(despacha)
		
		} catch (Exception e) {
			throw new ServletException("A l�gica de negocios causou uma excess�o", e);
		}		
	}
}
