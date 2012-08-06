package br.com.view;

import br.com.model.Contato;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import java.util.List;
import java.util.ArrayList;

public class AgendaContatoBean {
	private List<Contato> contatos;
	private Contato contato;
	private boolean haslista;

	public AgendaContatoBean() {
		this.setContatos(new ArrayList<Contato>());
		this.setContato(new Contato());
		haslista = false;
	}

	public void incluirContato(ActionEvent event) {
		FacesContext contexto = FacesContext.getCurrentInstance();
		if (this.contato.getNome().equals(null)
				| this.contato.getNome().length() < 3) {
			contexto.addMessage("frm:nome", new FacesMessage(
					FacesMessage.SEVERITY_ERROR, "Codigo incompleto!",
					"Digite Novamente!"));
		}
		this.getContatos().add(this.getContato());
		this.setContato(new Contato());
		haslista = true;

	}

	public void excluirContato(ActionEvent event) {
		this.getContatos().remove(this.getContato());

	}

	public List<Contato> getContatos() {
		return contatos;
	}

	public void setContatos(List<Contato> contatos) {
		this.contatos = contatos;
	}

	public boolean isHaslista() {
		return haslista;
	}

	public void setHaslista(boolean haslista) {
		this.haslista = haslista;
	}

	public Contato getContato() {
		return contato;
	}

	public void setContato(Contato contato) {
		this.contato = contato;
	}

	public boolean valoresNulos() {
		if (this.contato.getNome().isEmpty()
				| this.contato.getEndereco().isEmpty()
				| this.contato.getSexo().isEmpty())
			return true;
		return false;

	}

	public boolean exibeLista(ActionEvent event) {
		return contatos.isEmpty() ? false : true;
	}
}
