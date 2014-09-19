<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="resource"
	value="${fn:replace(pageContext.request.requestURI, contextPath, '')}" />


<title>AVALIA��O - DESENV. WEB</title>
</head>
<body>
	<%
		session = request.getSession();
	%>
	<div id="header">
		<img
			src="${pageContext.request.contextPath}/resources/images/logo.png" />
		<h1>AVALIA��O - DESENV. WEB</h1>
		<h2>Lucas Marcondes de Mattos Linsmeyer</h2>
		<h4>Matricula: 502376</h4>
		<h4>Clicks: ${sessionScope.click}</h4>
	</div>

	<div id="container">

		<div id="content">
			<h2>Avalia��o II - Programa��o para a Web</h2>
			<h2 class="aviso">Avisos</h2>
			<ol type="A" id="aviso">
				<li>Esta prova deve ser conclu�da em at� 2:00.</li>
				<li>Ap�s o t�rmino das quest�es chame o professor para salvar o
					seu projeto no pen drive. (Voc� pode exportar o projeto como um WAR
					no Eclipse/NetBeans. S� n�o esque�a de marcar a op��o de salvar o
					c�digo fonte.).</li>
				<li>Na p�gina index.jsp voc� deve colocar o seu nome e
					matr�cula.</li>
				<li>N�O COLE!</li>
				<li>N�O use email, mensagens instant�neas, redes sociais, etc,
					durante a prova. Se voc� estiver se comunicando com qualquer outra
					pessoa durante a prova (exceto o professor), voc� receber� a nota
					ZERO e ser� retirado da sala.</li>
			</ol>
			<br>
			<h2 class="questao">Quest�es:</h2>
			<ol>
				<li>A classe br.unisul.model.Autor deve ser persistida no banco
					de dados. Para isso n�s precisamos configur�-la no nosso projeto
					usando as especifica��es do Hibernate + JPA. Utilizando a p�gina de
					<a href="restrict/cadastrar.jsp">CADASTRO</a> e o servlet
					Cadastrar, implemente o cadastro de autores no sistema. (2,0
					pontos)
				</li>
				<hr>
				<br>
				<li>Assumindo que o sistema possui autores cadastrados,
					implemente a autentica��o desses autores utilizando o formul�rio do
					menu lateral, o servlet Login, a classe Autor e o m�todo
					getAutorByLoginSenha(String, String) da classe AutorDAO. Crie uma
					vari�vel de sess�o chamada "loggedIn" que indique ao sistema que o
					autor est� autenticado e uma vari�vel de sess�o chamada "autor" que
					contenha as informa��es do autor logado. Altere a mensagem de
					boas-vindas da p�gina restrict/index.jsp para apresentar as
					boas-vindas ao autor logado. (3,0 pontos)</li>
				<hr>
				<br>
				<li>Crie um jogo de adivinha��o, onde o usu�rio informa um
					n�mero em um campo texto na p�gina adivinha.jsp. Na primeira
					tentativa o sistema deve escolher um n�mero aleat�rio entre 0 e
					100. Se o usu�rio acertar, d� os parab�ns ao usu�rio. Se o usu�rio
					errar, d� uma dica ao usu�rio se o n�mero escolhido por ele � maior
					ou menor que o n�mero sorteado pelo sistema. Sugest�o: Use sess�es
					para gerenciar o n�mero sorteado pelo sistema. OBS.: Para sortear
					um n�mero aleat�rio entre 0 e 100 use o seguinte c�digo: <i>int
						valor = (int) (Math.random() * 101);</i>. (2,5 pontos)
				</li>
				<hr>
				<br>
				<li>Usando uma vari�vel de sess�o chamada "click", implemente o
					filtro CountClick para contar a quantidade de acessos �s p�ginas da
					pasta restrict que o jogador realizou durante a sua navega��o. (2,5
					pontos)</li>
			</ol>
		</div>
	</div>
	<div id="footer">&copy; 2014 Unisul. Todos os direitos
		reservados.</div>

</body>
</html>
