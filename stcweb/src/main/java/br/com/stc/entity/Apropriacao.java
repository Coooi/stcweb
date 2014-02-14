package br.com.stc.entity;

import java.util.Date;

import br.com.stc.enums.FormaPagamento;


public class Apropriacao {

	private Long id;
	private String descricao;
	private Date dtEntrada;
	private Date dtDocumento;
	private boolean contabil;
	private Setor setor;
	private FormaPagamento formaPagamento;
	private Double valor;
	private Double valorEntrada;
	private int parcelas;
	private boolean credito;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Date getDtEntrada() {
		return dtEntrada;
	}
	public void setDtEntrada(Date dtEntrada) {
		this.dtEntrada = dtEntrada;
	}
	public Date getDtDocumento() {
		return dtDocumento;
	}
	public void setDtDocumento(Date dtDocumento) {
		this.dtDocumento = dtDocumento;
	}
	public boolean isContabil() {
		return contabil;
	}
	public void setContabil(boolean contabil) {
		this.contabil = contabil;
	}
	public Setor getSetor() {
		return setor;
	}
	public void setSetor(Setor setor) {
		this.setor = setor;
	}
	
	public FormaPagamento getFormaPagamento() {
		return formaPagamento;
	}
	public void setFormaPagamento(FormaPagamento formaPagamento) {
		this.formaPagamento = formaPagamento;
	}
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}
	public Double getValorEntrada() {
		return valorEntrada;
	}
	public void setValorEntrada(Double valorEntrada) {
		this.valorEntrada = valorEntrada;
	}
	public int getParcelas() {
		return parcelas;
	}
	public void setParcelas(int parcelas) {
		this.parcelas = parcelas;
	}
	public boolean isCredito() {
		return credito;
	}
	public void setCredito(boolean credito) {
		this.credito = credito;
	}
	
	
	
	
	
	
}
