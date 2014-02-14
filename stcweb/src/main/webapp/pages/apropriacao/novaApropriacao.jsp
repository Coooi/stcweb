<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/pages/header.jsp"></jsp:include>
<script src="/stc/resources/js/novaApropriacao.js"></script>
<script src="/stc/resources/js/jquery.maskMoney.js"></script>

<body>
	<!-- TOP MENU -->
	<jsp:include page="/pages/topMenu.jsp"></jsp:include>
	

	<!-- CONTEUDO -->
	<div id="body">
		<div>
			<h1>Nova Apropriação</h1>
			<hr class="stcHR1">
		</div>
		<div class="conteudo">
			<div id="divForm">
			
				<form name="formApropriacao" method="POST" action="textInput.jsp" class="stcFormApropriacao">
					<fieldset>
    				<legend>Laçamento</legend>
					<table width="90%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><span aria-hidden="true" data-icon="&#xe1ac;"></span> Data Lançamento</td>
							<td><span aria-hidden="true" data-icon="&#xe1ac;"></span> Data Emissão</td>
							
						</tr>
						<tr>
							<td style="width: 350px;"><input type="text" id="dataEntrada" class="stcInput" /></td>
							<td><input type="text" id="dataDocumento" class="stcInput" /></td>
						</tr>
						<tr>
							<td style="vertical-align: top;">Setor</td>
							<td style="vertical-align: top;">Tipo Documento</td>
						</tr>
						<tr>
							<td style="vertical-align: top;"><select id="comboSetor"
								size="1" name="comboSetor" class="stcCombo" style="height: 29px;">
									<option value="0">Adm. Central</option>
									<option selected value="1">Ed. Nair Ataíde</option>
									<option value="2">Ed. Blue Diamond</option>
									<option value="3">Integral - Ouro Branco</option>
								</select>
							</td>
							<td style="vertical-align: top;"><input type="radio" name="groupContabil"
								id="radioTipoDoc" value="contabil" checked="checked" style="vertical-align: baseline;"/>
								Contábil 
								<input type="radio" id="radioTipoDoc" name="groupContabil" style="vertical-align: baseline;" 
								value="naoContabil" /> Não Contábil
							</td>
						</tr>
						<tr>
							<td style="vertical-align: top;">Forma Pgto.</td>
							<td>Valor</td>
						</tr>
						<tr>
							<td style="vertical-align: top;"><select id="comboPgto"
								size="1" name="comboPgto" class="stcCombo" style="height: 29px;">
									<option selected value="aVista">À Vista</option>
									<option value="prazo">Prazo</option>
									<option value="entradaPrazo">Entrada + Prazo</option>
							</select></td>
							<td style="vertical-align: top;"><input type="text" id="valorDoc" class="stcInput"/></td>
						</tr>
						<tr>
							<td colspan="3">
								<div id="divPrazo" class="stcDivPrazo">
									<fieldset style="margin-bottom: -15px;">
										<legend>Prazo</legend>
									</fieldset>
									<p style="margin: 5px;">Nº de Parcelas</p>
									<input type="text" id="numParcelasPrazo" name="numParcelasPrazo" style="margin-left: 5px;" class="stcInput" />
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<div id="divEntradaPrazo" class="stcDivPrazo">
								<fieldset style="margin-bottom: -15px;">
								<legend>Entrada + Parcelas</legend>
								</fieldset>
									<table>
										<tr>
											<td>Entrada</td>
											<td>Nº de Parcelas</td>
										</tr>
										<tr>
											<td><input type="text" id="vrEntrada" name="vrEntrada" class="stcInput"	style="margin-right: 15px;" /></td>
											<td><input type="text" id="numParcelasEntrada" name="numParcelasEntrada" class="stcInput" /></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td>Tipo de entrada</td>
						</tr>
						<tr>
							<td style="vertical-align: top;">
								<input type="radio" name="grupoCD" id="radioCredito" style="vertical-align: baseline;"
									value="credito" /> Crédito 
								<input style="vertical-align: baseline;" type="radio" name="grupoCD" id="radioDebito" 
									value="debito" checked="checked" />	Débito</td>
						</tr>
						<tr>
							<td colspan="2">Descrição</td>
						</tr>
						<tr>
							<td colspan="2"><textarea id="descricao" rows="4" cols="30"
									class="stcArea"></textarea></td>
						</tr>
						<tr>
							<td><input id="btnLancar" type="submit" name="submit"
								value="Lançar" class="btn btn-success"></td>
						</tr>
					</table>
					</fieldset>
				</form>
			</div>
		</div>
	</div>


	<!-- RODAPE -->
	<jsp:include page="/pages/rodape.jsp"></jsp:include>

	<script type="text/javascript">
		jQuery(document).ready(function() {
			var currentDate = new Date();
			$("#dataEntrada").datepicker("setDate", currentDate);
			comboPgtoEvent();
			$("#comboPgto").change(function() {
				comboPgtoEvent();
			});
			$("#valorDoc").maskMoney({symbol:"R$",decimal:",",thousands:"."});
			$("#vrEntrada").maskMoney({symbol:"R$",decimal:",",thousands:"."});
		});
	</script>
</body>
</html>