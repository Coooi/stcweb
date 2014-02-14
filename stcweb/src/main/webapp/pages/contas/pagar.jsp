<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/pages/header.jsp"></jsp:include>
<link href="/stc/resources/css/pagar.css" rel="stylesheet" />
<script src="/stc/resources/js/contas.js"></script>
<script src="/stc/resources/js/jquery.maskMoney.js"></script>

<body>
	<!-- TOP MENU -->
	<jsp:include page="/pages/topMenu.jsp"></jsp:include>


	<!-- CONTEUDO -->
	<div id="body">
		<div>
			<h1>Contas a Pagar</h1>
			<hr class="stcHR1">
		</div>
		<div class="conteudo-arg">
			<div id="divForm">
				<form name="formApropriacao" method="POST" action="textInput.jsp"
					class="stcFormApropriacao">
					<table id="tbArgConsultaPagar" >
						<tr>
							<td style="vertical-align: top;">Setor:</td>
							<td><span aria-hidden="true" data-icon="&#xe1ac;"></span>
								Data Início:</td>
							<td><span aria-hidden="true" data-icon="&#xe1ac;"></span>
								Data Fim:</td>
							<td>Palavra-chave:</td>
							<td></td>

						</tr>
						<tr>
							<td style="vertical-align: top;"><select id="comboSetor"
								size="1" name="comboSetor" class="stcCombo" style="height: 29px;">
									<option selected value="0">Ed. Nair Ataíde</option>
									<option value="1">Ed. Blue Diamond</option>
									<option value="2">Integral - Ouro Branco</option>
									<option value="3">Adm. Central</option>
							</select></td>
							<td><input type="text" id="arg-dataInicio" class="stcInput" style="width: 100px;" /></td>
							<td><input type="text" id="arg-dataFim" class="stcInput" style="width: 100px;" /></td>
							<td><input type="text" id="palavraChave" class="stcInput" style="width: 250px;"/></td>
							<td><input id="btnPesquisar" type="submit" name="submit" style="margin-left: 20px; margin-bottom: 10px;"
								value="Pesquisar" class="btn btn-primary"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		
		<div class="conteudoTabela">
			<h4 style="float: left;">Movimentação</h4>
			<div id="divTable">
				 <table class="tbConsultaContasPagar">
                    <tr>
                        <td>
                            Data Entrada
                        </td>
                        <td >
                            Descrição
                        </td>
                        <td >
                            Valor
                        </td>
                        <td >
                            Status
                        </td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                        <td >
                            27/06/2013
                        </td>
                        <td >
                            Teste teste teste.
                        </td>
                        <td>
                            R$ 300,00
                        </td>
                        <td >
                            A ser pago
                        </td>
                        <td>
                            <a href="#"><input id="btnPagar" type="submit" name="submit" value="Pagar" class="btn btn-inverse" ></a>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            28/06/2013
                        </td>
                        <td >
                            Teste teste teste.
                        </td>
                        <td>
                            R$ 400,00
                        </td>
                         <td >
                            Pago
                        </td>
                        <td>
                        
                        </td>
                    </tr>
                    <tr>
                        <td >
                            29/06/2013
                        </td>
                        <td >
                            Teste teste teste.
                        </td>
                        <td>
                            R$ 500,00
                        </td>
                         <td >
                            Status
                        </td>
                        <td>
                            <a href="#"><input id="btnPagar" type="submit" name="submit" value="Pagar" class="btn btn-inverse" ></a>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            30/06/2013
                        </td>
                        <td >
                            Teste teste teste.
                        </td>
                        <td>
                            R$ 1000,00
                        </td>
                         <td >
                            Status
                        </td>
                        <td>
                            <a href="#"><input id="btnPagar" type="submit" name="submit" value="Pagar" class="btn btn-inverse" ></a>
                        </td>
                    </tr>
                </table>
			</div>
		</div>
	</div>


	<!-- RODAPE -->
	<jsp:include page="/pages/rodape.jsp"></jsp:include>

	<script type="text/javascript">
		jQuery(document).ready(function() {
			var currentDate = new Date();
			$("#arg-dataInicio").datepicker("setDate", currentDate);
		});
	</script>
</body>
</html>