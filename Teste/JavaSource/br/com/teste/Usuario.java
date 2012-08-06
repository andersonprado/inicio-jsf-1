package br.com.teste;

import javax.faces.event.ActionEvent;

public class Usuario {
	private String nome;

	public void setNome(String nome) {
		this.nome = nome;

	}

	public String getNome() {
		return nome;
	}

	public void enviar(ActionEvent event) {
		this.nome = this.getNome().toUpperCase();
	}

}
