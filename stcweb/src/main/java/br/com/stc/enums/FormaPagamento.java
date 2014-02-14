package br.com.stc.enums;

public enum FormaPagamento {
	
	A_VISTA("A Vista"), PRAZO("A Prazo"), ENTRADA_PARCELAS("Entrada + Parcelas");
	
	private String tipo;
	
	private FormaPagamento(String tipo) {
		this.tipo = tipo;
	}
}
