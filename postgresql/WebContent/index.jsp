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


<title>AVALIAÇÃO - DESENV. WEB</title>
</head>
<body>
	<%
		session = request.getSession();
	%>
	<div id="header">
		<img
			src="${pageContext.request.contextPath}/resources/images/logo.png" />
		<h1>AVALIAÇÃO - DESENV. WEB</h1>
		<h2>Lucas Marcondes de Mattos Linsmeyer</h2>
		<h4>Matricula: 502376</h4>
		<h4>Clicks: ${sessionScope.click}</h4>
	</div>

	<div id="container">

		<div id="content">
			<h2>Avaliação II - Programação para a Web</h2>
			<h2 class="aviso">Avisos</h2>
			<ol type="A" id="aviso">
				<li>Esta prova deve ser concluída em até 2:00.</li>
				<li>Após o término das questões chame o professor para salvar o
					seu projeto no pen drive. (Você pode exportar o projeto como um WAR
					no Eclipse/NetBeans. Só não esqueça de marcar a opção de salvar o
					código fonte.).</li>
				<li>Na página index.jsp você deve colocar o seu nome e
					matrícula.</li>
				<li>NÃO COLE!</li>
				<li>NÃO use email, mensagens instantâneas, redes sociais, etc,
					durante a prova. Se você estiver se comunicando com qualquer outra
					pessoa durante a prova (exceto o professor), você receberá a nota
					ZERO e será retirado da sala.</li>
			</ol>
			<br>
			<h2 class="questao">Questões:</h2>
			<ol>
				<li>A classe br.unisul.model.Autor deve ser persistida no banco
					de dados. Para isso nós precisamos configurá-la no nosso projeto
					usando as especificações do Hibernate + JPA. Utilizando a página de
					<a href="restrict/cadastrar.jsp">CADASTRO</a> e o servlet
					Cadastrar, implemente o cadastro de autores no sistema. (2,0
					pontos)
				</li>
				<hr>
				<br>
				<li>Assumindo que o sistema possui autores cadastrados,
					implemente a autenticação desses autores utilizando o formulário do
					menu lateral, o servlet Login, a classe Autor e o método
					getAutorByLoginSenha(String, String) da classe AutorDAO. Crie uma
					variável de sessão chamada "loggedIn" que indique ao sistema que o
					autor está autenticado e uma variável de sessão chamada "autor" que
					contenha as informações do autor logado. Altere a mensagem de
					boas-vindas da página restrict/index.jsp para apresentar as
					boas-vindas ao autor logado. (3,0 pontos)</li>
				<hr>
				<br>
				<li>Crie um jogo de adivinhação, onde o usuário informa um
					número em um campo texto na página adivinha.jsp. Na primeira
					tentativa o sistema deve escolher um número aleatório entre 0 e
					100. Se o usuário acertar, dê os parabéns ao usuário. Se o usuário
					errar, dê uma dica ao usuário se o número escolhido por ele é maior
					ou menor que o número sorteado pelo sistema. Sugestão: Use sessões
					para gerenciar o número sorteado pelo sistema. OBS.: Para sortear
					um número aleatório entre 0 e 100 use o seguinte código: <i>int
						valor = (int) (Math.random() * 101);</i>. (2,5 pontos)
				</li>
				<hr>
				<br>
				<li>Usando uma variável de sessão chamada "click", implemente o
					filtro CountClick para contar a quantidade de acessos às páginas da
					pasta restrict que o jogador realizou durante a sua navegação. (2,5
					pontos)</li>
			</ol>
		</div>
	</div>
	<div id="footer">&copy; 2014 Unisul. Todos os direitos
		reservados.</div>

</body>
</html>
