<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>  
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="div-top">
	<div id="divLogo">
		<a href="/stc/home"> <img id="stc-logo"
			src="/stc/resources/midia/stc-logo75.png" height="75px" width="75px" />
		</a>
	</div>
	<div id="div-menu">
		<!-- MENU -->
		<ul id="menu">
			<li><a id="btnApropriacao" href="/stc/apropriacao/nova"><span aria-hidden="true" data-icon="&#xe055;"></span> Apropriação</a>
				<ul>
					<li><a href="/stc/apropriacao/nova"><span aria-hidden="true" data-icon="&#xe006;"></span> Lançar</a></li>
					<li><a href="/stc/apropriacao/consulta"><span aria-hidden="true" data-icon="&#xe059;"></span> Consultar</a></li>
				</ul></li>
			<li><a href="/stc/contas/pagar"><span aria-hidden="true" data-icon="&#xe00a;"></span> Contas</a>
				<ul>
					<li><a href="/stc/contas/pagar"> <span aria-hidden="true" data-icon="&#xe047;"></span>
					Pagar</a>
					</li>
					<li><a href="/stc/contas/receber"><span aria-hidden="true" data-icon="&#xe06f;"></span> Receber</a></li>
				</ul></li>
			<li><a href="/stc/caixa"><span aria-hidden="true" data-icon="&#xe079;"></span> Caixa</a></li>
			<li><a href="/stc/contabilidade"><span aria-hidden="true" data-icon="&#xe006;"></span> Docs. Contador</a></li>
			<li><a href="/stc/fornecedores"><span aria-hidden="true" data-icon="&#xe094;"></span> Fornecedores</a></li>
			<li><a href="/stc/setores"><span aria-hidden="true" data-icon="&#xe020;"></span> Setores</a></li>
		</ul>
	</div>
	<div id="div-logout">
		<a id="emailUser">${pageContext.request.remoteUser}</a>
		<a href="/stc/logout"><input id="btnSair" type="submit" value="Sair" name="submit" class="btn btn-primary" /></a>
	</div>
</div>