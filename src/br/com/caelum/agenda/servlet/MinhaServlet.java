package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contador")
public class MinhaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private int contador = 0; //variável de instãncia
    
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		log("Servlet Iniciada");
	}
	
	public void destroy() {
		super.destroy();
		log("Servlet Destruida");
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
		
		contador++;
		PrintWriter out = response.getWriter();	
		out.print("<HTML>");
			out.print("<BODY>");
				out.print("Contador agora é: " +contador);	
			out.print("</BODY>");
		out.print("</HTML>");
	}
}
