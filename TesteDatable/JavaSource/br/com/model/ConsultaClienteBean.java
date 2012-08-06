package br.com.model;

import java.util.ArrayList;
import java.util.List;

import javax.faces.event.ActionEvent;

public class ConsultaClienteBean {
	private List<Cliente> clientes = new ArrayList<Cliente>();

	public void consultar(ActionEvent event) {
		this.getClientes().clear();
		this.getClientes().add(new Cliente(1, "Teste", "Teste cidade"));
		this.getClientes().add(new Cliente(2, "Teste2", "Teste cidade 2"));
		this.getClientes().add(new Cliente(3, "Teste3", "Teste cidade 3"));
	}

	public List<Cliente> getClientes() {
		return this.clientes;
	}
}
