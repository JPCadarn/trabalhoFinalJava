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
		<label for="twitter">Twitter</label><input type="text" placeholder="twitter" name="twitter"><br>
		<label for="facebook">Facebook</label><input type="text" placeholder="facebook" name="facebook"><br>
		<label for="instagram">Instagram</label><input type="text" placeholder="instagram" name="instagram"><br>
		<input type="submit" value="Salvar"> 
	</form>
</body>
</html>