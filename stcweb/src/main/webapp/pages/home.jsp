<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- HEADER -->
<jsp:include page="/pages/header.jsp"></jsp:include>

<body>
	
	<!-- TOP MENU -->
	<jsp:include page="/pages/topMenu.jsp"></jsp:include>

	<!-- CONTEUDO -->
	
	<div class="hero-unit" style="margin: 80px;">
        <h1>Bem vindo!</h1>
        <h4>Hoje é ${applicationScope.data} </h4>
        <p><a href="/stc/apropriacao/novaApropriacao.jsp" class="btn btn-large btn-primary">Lançar</a>
        <a href="/stc/apropriacao/consultaApropriacao.jsp" class="btn btn-large btn-primary">Ver lançamentos »</a>
        </p>
    </div>
    
	<!-- RODAPE -->
	<jsp:include page="/pages/rodape.jsp"></jsp:include>

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.9.1.min.js">
		jQuery(document).ready(function() {
			jQuery("#btnApropriacao").on("click", function(event) {
				alert('oi de volta');	
				alert('teste GUI');	
						
			});
		});
	</script>
</body>
</html>