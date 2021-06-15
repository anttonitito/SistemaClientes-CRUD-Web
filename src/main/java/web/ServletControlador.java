package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datos.ClienteDaoJDBC;
import dominio.Cliente;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String accion =  request.getParameter("accion");
			
		if (accion != null  && !accion.equals("") ) {
			switch (accion) {
			case "actualizar":
				this.actualizar(request, response);
				break;
			case "eliminar":
				this.eliminar(request, response);
				break;
			default:

				this.accionDefault(request, response);
				break;
			}
		}else {

			this.accionDefault(request, response);
			
		}
		
		
	}
	
	
	private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClienteDaoJDBC clienteDao = new ClienteDaoJDBC();
		List<Cliente> clientes = new ArrayList<Cliente>();
		HttpSession session = request.getSession();
		
		clientes = clienteDao.ListarClientes();
		
		session.setAttribute("clientes", clientes);
		session.setAttribute("totalSaldo", this.totalSaldo(clientes));
		session.setAttribute("cantidadClientes", this.cantidadClientes(clientes));
		//request.getRequestDispatcher("cliente.jsp").forward(request, response);
		response.sendRedirect("cliente.jsp");
	}
	
	
	
	private double totalSaldo(List<Cliente> clientes) {
	
		double total = 0;
		
		for (Cliente cliente : clientes) {
			total += cliente.getSaldo();
		}		
		
		return total;
	}
	
	private int cantidadClientes(List<Cliente> clientes) {
		
		return clientes.size();
	}
	
	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idCliente  = Integer.parseInt(request.getParameter("idCliente"));
		
		Cliente cliente = new Cliente(idCliente);
		ClienteDaoJDBC clienteDao = new ClienteDaoJDBC();
		cliente = clienteDao.encontrarCliente(cliente);
		request.setAttribute("cliente", cliente);
		
		request.getRequestDispatcher("editar.jsp").forward(request, response);
	}
	
private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idCliente  = Integer.parseInt(request.getParameter("idCliente"));
		
		Cliente cliente = new Cliente(idCliente);
		ClienteDaoJDBC clienteDao = new ClienteDaoJDBC();
		int num = clienteDao.eliminarCliente(cliente);
		
		this.accionDefault(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion =  request.getParameter("accion");
		
		
		if (accion != null  && !accion.equals("") ) {
			switch (accion) {
			case "insertar":
				this.ingresar(request, response);
				break;
			case "modificar":
				this.modificar(request, response);
				break;
			default:

				this.accionDefault(request, response);
				
				break;
			}
		}else {

			this.accionDefault(request, response);
			
		}
		
		
		
		
		
		
	
	}
	
	private void ingresar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		double saldo = 0;
		
		String saldoString  = request.getParameter("saldo");
			
		if (saldoString != null && !saldoString.equals("")) {
			saldo = Double.parseDouble(saldoString);
		}
		
		Cliente cliente = new Cliente(nombre, apellido, email, telefono, saldo);
		ClienteDaoJDBC clienteDao = new ClienteDaoJDBC();
		int num = clienteDao.insertarCliente(cliente);
		
		this.accionDefault(request, response);
		
	}
	private void modificar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idCliente = Integer.parseInt(request.getParameter("idCliente")) ;
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		double saldo = 0;
		
		String saldoString  = request.getParameter("saldo");
			
		if (saldoString != null && !saldoString.equals("")) {
			saldo = Double.parseDouble(saldoString);
		}
		
		Cliente cliente = new Cliente(idCliente, nombre, apellido, email, telefono, saldo);
		ClienteDaoJDBC clienteDao = new ClienteDaoJDBC();
		int num = clienteDao.actualizarCliente(cliente);
		

		this.accionDefault(request, response);
		
	}
	
}
