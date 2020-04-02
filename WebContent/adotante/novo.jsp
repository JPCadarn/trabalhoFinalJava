<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo Usuário</title>
</head>
<body>
	<form action="create.jsp" method="POST">
 		<label for="nome">nome</label><input type="text" placeholder="nome" name="nome"><br>
		 <label for="endereco">endereco</label><input type="text" placeholder="endereco" name="endereco"><br>
		 <label for="cidade">cidade</label><input type="text" placeholder="cidade" name="cidade"><br>
		 <label for="uf">uf</label><input type="text" placeholder="uf" name="uf"><br>
		 <label for="telefone">telefone</label><input type="text" placeholder="telefone" name="telefone"><br>
		 <label for="email">email</label><input type="text" placeholder="email" name="email"><br>
		 <label for="cpfCnpj">cpfCnpj</label><input type="text" placeholder="cpfCnpj" name="cpfCnpj"><br>
		 <label for="idade">idade</label><input type="text" placeholder="idade" name="idade"><br>
		 <label for="espaco">espaco</label><input type="text" placeholder="espaco" name="espaco"><br>
		 <label for="atividadeFisica">atividadeFisica</label><input type="text" placeholder="atividadeFisica" name="atividadeFisica"><br>
		 <label for="atividadeFisicaAcompanhado">atividadeFisicaAcompanhado</label><input type="text" placeholder="atividadeFisicaAcompanhado" name="atividadeFisicaAcompanhado"><br>
		 <label for="tempoDisponivel">tempoDisponivel</label><input type="text" placeholder="tempoDisponivel" name="tempoDisponivel"><br>
		 <label for="idadeInteresse">idadeInteresse</label><input type="text" placeholder="idadeInteresse" name="idadeInteresse"><br>
		 <label for="tamanhoInteresse">tamanhoInteresse</label><input type="text" placeholder="tamanhoInteresse" name="tamanhoInteresse"><br>
 		<input type="submit" value="Salvar"> 
	</form>
</body>
</html>