<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>STC Web - Entrar</title>
</head>

<link href="/stc/css/login.css" rel="stylesheet" />
<link rel="shortcut icon" href="/stc/midia/stc-logo.png">

<body>
	<div id="fundo">
		<img id="stcLogo" style="margin: 7px;" src="/stc/midia/stc-logo.png" height="65px" width="65px" />
		<div id="divLogin">
			<form action="<c:url value='j_spring_security_check' />" method=post>
			    <p><strong>Email: </strong>
			    <input type="text" class="stcInput" style="" name="j_username" size="50">
			    <p><p><strong>Senha: </strong>
			    <input type="password" class="stcInput" size="16" name="j_password">
			    <p><p>
			    <div style="margin-left: 100px;">
				    <input type="submit" class="btn btn-primary" value="Entrar">
				    <input type="reset" class="btn btn-inverse" value="Limpar">
			    </div>
			</form>
		</div>
		<c:if test="${not empty error}">
			<div class="errorblock">
				Dados inválidos! Tente novamente.<br /> Causa :
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
	</div>
</body>
</html>