<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/pages/header.jsp"></jsp:include>
<link href="/resources/css/apropriacao.css" rel="stylesheet" />
<script src="/resources/js/stcNovaApropriacao.js"></script>
<script src="/resources/js/jquery.maskMoney.js"></script>

<body>
	<!-- TOP MENU -->
	<jsp:include page="/pages/topMenu.jsp"></jsp:include>


	<!-- CONTEUDO -->
	<div id="body">
		<div>
			<h1>Consulta Apropriação</h1>
			<hr class="stcHR1">
		</div>
		<div class="conteudo-arg">
			<div id="divForm">
				<form name="formApropriacao" method="POST" action="textInput.jsp"
					class="stcFormApropriacao">
					<table id="tbArgConsultaAprop" >
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
								size="1" name="comboSetor" class="stcCombo" style="height: 29px;"	>
									<option selected value="0">Ed. Nair Ataíde</option>
									<option value="1">Ed. Blue Diamond</option>
									<option value="2">Integral - Ouro Branco</option>
									<option value="3">Adm. Central</option>
							</select></td>
							<td><input type="text" id="dataEntrada" class="stcInput" style="width: 100px;" /></td>
							<td><input type="text" id="dataDocumento" class="stcInput" style="width: 100px;" /></td>
							<td><input type="text" id="palavraChave" class="stcInput"/></td>
							<td><input id="btnPesquisar" type="submit" style="margin-left: 20px; margin-bottom: 10px;" name="submit"
								value="Pesquisar" class="btn btn-primary"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		
		<div class="conteudoTabela">
			<h4 style="float: left;">Apropriações</h4>
			<div id="divTable">
			<a href="/stc/apropriacao/novaApropriacao.jsp">
			<p style="float: right;">
  				<button class="btn btn-danger" type="button"><span aria-hidden="true" data-icon="&#xe0d2;"/> Excluir</button>
  				<button class="btn btn-primary" type="button"><span aria-hidden="true" data-icon="&#xe0d7;"/> Nova Apropriação</button>
			</p>
<!-- 			<a href="#">  -->
<!-- 					<input id="btnRemover" type="submit" name="submit" style="float: right; position: relative;" -->
<!-- 											value="Excluir" class="btn btn-danger" ></a>   -->
<!-- 			<input id="btnNovoAprop" type="submit" name="submit" style="float: right; position: relative;" -->
<!-- 										value="Nova Apropriação" class="btn btn-primary" ></a> -->
				 <table class="tbConsultaAprop">
                    <tr>
                   		<td>
                    		<input id="selectall" type="checkbox" value="del">
                        </td>
                        <td>
                            Data Entrada
                        </td>
                        <td>
                            Descrição
                        </td>
                         <td >
                            Valor
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<input type="checkbox" value="del">
                        </td>
                        <td >
                            27/06/2013
                        </td>
                        <td>
                           	Teste, teste, teste.
                        </td>
                        <td>
                            R$ 300,00
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<input type="checkbox" value="del">
                        </td>
                        <td >
                            27/06/2013
                        </td>
                        <td>
                            Teste, teste, teste.
                        </td>
                        <td>
                            R$ 400,00
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<input type="checkbox" value="del">
                        </td>
                        <td >
                            27/06/2013
                        </td>
                        <td>
                            Teste, teste, teste.
                        </td>
                        <td>
                            R$ 500,00
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<input type="checkbox" value="del">
                        </td>
                        <td >
                            27/06/2013
                        </td>
                        <td>
                            Teste, teste, teste.
                        </td>
                        <td>
                            R$ 1000,00
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
			$("#arg-dataEntrada").datepicker("setDate", currentDate);
			$('#selectall').change('click',function () {
			    $('.tbConsultaAprop input').prop('checked', this.checked);
			});
		});
	</script>
</body>
</html>