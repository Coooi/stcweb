<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- HEADER -->
<jsp:include page="/pages/header.jsp"></jsp:include>
<script type="text/javascript" src="/stc/resources/js/setores.js"></script>

<!-- CSS -->
<link href="/stc/resources/css/setores.css" rel="stylesheet" />

<!-- BODY -->
<body>
	<!-- TOP MENU -->
	<jsp:include page="/pages/topMenu.jsp"></jsp:include>
	

	<!-- CONTEUDO -->
	<div id="body">
		<div>
			<h1>Setores</h1>
			<hr class="stcHR1">
		</div>
		<div class="conteudo-arg" style="height: 125px;">
			<div id="divForm">
			
				<form name="formApropriacao" method="POST" action="textInput.jsp"
					class="stcFormApropriacao">
					<fieldset>
					<legend style="margin-bottom: 5px;" >Novo Setor</legend>
					<table width="70%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td style="vertical-align: top;">Nome</td>
							<td style="vertical-align: top;">Descrição</td>
						</tr>
						<tr>
							<td style="vertical-align: top;">
                                <input type="text" id="nomeSetor" class="stcInput" style="margin-right: 15px; width: 300px;" />
                            </td>
							<td style="vertical-align: top;">
                                <input type="text" id="nomeSetor" class="stcInput" style="margin-right: 5px; width: 300px;" />
							</td>
							<td style="vertical-align: top;">
                                <button id="salvar" class="btn btn-success" type="button" style="margin-bottom: 10px; min-width: 84px; margin-right: 5px;"><span aria-hidden="true" data-icon="&#xe0d3;"/> Salvar</button>
                            </td>
							<td style="vertical-align: top;">
                                <button id="cancelar" class="btn btn-danger" type="button" style="margin-bottom: 10px;  min-width: 103px;"><span aria-hidden="true" data-icon="&#xe0d6;"/> Cancelar</button>
                            </td>
						</tr>
					</table>
					</fieldset>
				</form>
			</div>
		</div>
		<div class="conteudoTabela">
			<h4 style="float: left;">Setores</h4>
			<div id="divTable">
				<div>
	  				<button id="excluirSetor" class="btn btn-danger" style="float: right;" type="button"><span aria-hidden="true" data-icon="&#xe0d2;"/> Excluir</button>
					<button id="novoSetor" class="btn btn-primary" style="float: right; margin-right: 10px;" type="button"><span aria-hidden="true" data-icon="&#xe0d7;"/> Novo</button>
				</div>
				 <table class="tbConsultaSetores">
                    <tr>
                     	<td>
                    		<input id="selectall" type="checkbox">
                        </td>
                        <td>
                            Setor
                        </td>
                        <td >
                            Descrição
                        </td>
                    </tr>
                    <tr>
                    	<td>
  							<input type="checkbox" value="del">
                        </td>
                        <td >
                            ${message}
                        </td>
                        <td>
                            ${message}
                        </td>
                    </tr>
                    <tr>
                   		<td>
                    		<input type="checkbox" value="del">
                        </td>
                        <td >
                            Ed. Nair Ataide II
                        </td>
                        <td>
                            Inicio: 30/07/2010
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<input type="checkbox" value="del">
                        </td>
                        <td >
                            Ed. Blue Diamond
                        </td>
                        <td>
                            Inicio: 30/05/2012
                        </td>
                    </tr>
                    <tr>
                     	<td>
                    		<input type="checkbox" value="del">
                        </td>
                        <td >
                            Integral - Ouro Branco
                        </td>
                        <td>
                            Inicio: 30/08/12 - Termino: 30/04/2013
                        </td>
                    </tr>
                </table>
			</div>
		</div>
	</div>


	<!-- RODAPE -->
	<jsp:include page="/pages/rodape.jsp"></jsp:include>

</body>
</html>