package datos;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import dominio.Cliente;

public class ClienteDaoJDBC {

	private static String SQL_SELECT = "SELECT * FROM cliente";
	private static String SQL_SELECT_BY_ID = "SELECT * FROM cliente WHERE idCliente = ?";
	private static String SQL_INSERT = "INSERT INTO cliente (nombre, apellido, email, telefono, saldo ) VALUES (?,?,?,?,?)";
	private static String SQL_UPDATE = "UPDATE cliente SET nombre = ?, apellido = ?, email = ?, telefono = ?, saldo = ? WHERE idCliente = ? ";
	private static String SQL_DELETE = "DELETE FROM cliente WHERE idCliente = ?";

	
	
	public List<Cliente> ListarClientes(){
		Connection cn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<Cliente> clientes = new ArrayList<>();
		
		try {
			cn = Conexion.getConnection();
			pst = cn.prepareStatement(SQL_SELECT);
			rs = pst.executeQuery();
			
			while (rs.next()) {
				
				
				int idCliente = rs.getInt(1);
				String nombre = rs.getString(2);
				String apellido = rs.getString(3);
				String email = rs.getString(4);
				String telefono = rs.getString(5);
				double saldo = rs.getDouble(6);
				Cliente cliente = new Cliente(idCliente, nombre, apellido, email, telefono, saldo);
				
				clientes.add(cliente);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			Conexion.close(rs);
			Conexion.close(pst);
			Conexion.close(cn);
		}
		
		return clientes;
	}

	
	
	public Cliente encontrarCliente(Cliente cliente) {
		
		
		Connection cn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		
		try {
			cn = Conexion.getConnection();
			pst = cn.prepareStatement(SQL_SELECT_BY_ID);
			pst.setInt(1, cliente.getIdCliente());
			rs = pst.executeQuery();
			
			if (rs.next()) {
				int idCliente = rs.getInt(1);
				String nombre = rs.getString(2);
				String apellido = rs.getString(3);
				String email = rs.getString(4);
				String telefono = rs.getString(5);
				double saldo = rs.getDouble(6);
				cliente.setIdCliente(idCliente);
				cliente.setNombre(nombre);
				cliente.setApellido(apellido);
				cliente.setEmail(email);
				cliente.setTelefono(telefono);
				cliente.setSaldo(saldo);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			Conexion.close(rs);
			Conexion.close(pst);
			Conexion.close(cn);
		}
		
		
		return cliente;
		
	}
	
	
	public int insertarCliente(Cliente cliente) {
		
		Connection cn = null;
		PreparedStatement pst = null;
		
		int filas = 0;
		
		try {
			cn = Conexion.getConnection();
			pst = cn.prepareStatement(SQL_INSERT);
			pst.setString(1, cliente.getNombre());
			pst.setString(2, cliente.getApellido());
			pst.setString(3, cliente.getEmail());
			pst.setString(4, cliente.getTelefono());
			pst.setDouble(5, cliente.getSaldo());
			filas = pst.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			Conexion.close(pst);
			Conexion.close(cn);
		}
		
		
		
		return filas;
		
	}
	
	
	public int actualizarCliente(Cliente cliente) {
		
		Connection cn = null;
		PreparedStatement pst = null;
		int filas = 0;
		
		try {	
			cn = Conexion.getConnection();
		
			pst = cn.prepareStatement(SQL_UPDATE);
			pst.setString(1, cliente.getNombre());
			pst.setString(2, cliente.getApellido());
			pst.setString(3, cliente.getEmail());
			pst.setString(4, cliente.getTelefono());
			pst.setDouble(5, cliente.getSaldo());
			pst.setInt(6, cliente.getIdCliente());
			
			filas = pst.executeUpdate();
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			Conexion.close(pst);
			Conexion.close(cn);
			
		}
		return filas;
		
	}
		
		public int eliminarCliente(Cliente cliente) {
			
			Connection cn = null;
			PreparedStatement pst = null;
			int filas = 0;
			
		try {
			cn = Conexion.getConnection();
			pst = cn.prepareStatement(SQL_DELETE);
			pst.setInt(1, cliente.getIdCliente());
			
			filas = pst.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Conexion.close(pst);
			Conexion.close(cn);
		}
		return filas;
			
	
		
	}
	
	
	
}
