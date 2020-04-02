<%@page import="java.util.*"%>
<%@page import="trabalhoFinal.Instituicao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Usuários</title>
</head>
<body>
	<h1>Usuários</h1>
	<a href="novo.jsp">Novo Usuário</a>
	
	<% 
		int i = 0;
     	String var = "String";
		List<Instituicao> instituicaos;
		if (session.getAttribute("instituicaos") == null) {
			instituicaos = new ArrayList<Instituicao>();
			session.setAttribute("instituicaos", instituicaos);
		} else
			instituicaos = (ArrayList<Instituicao>) session.getAttribute("instituicaos");

		out.print(" Usuários Cadastrados: " + instituicaos.size());
	%>
	<table>
		<tr>
			<th>Nome</th>
			<th>Telefone</th>
			<th>Email</th>
			<th>Endereço</th>
		</tr>
		<% for (Instituicao instituicao : instituicaos){ 
			out.print("<tr>");
			out.print("<td>"+instituicao.getNome()+"</td>");
			out.print("<td>"+instituicao.getTelefone()+"</td>");
			out.print("<td>"+instituicao.getEmail()+"</td>");
			out.print("<td>"+instituicao.getEndereco()+", "+instituicao.getCidade()+" - "+instituicao.getUf()+"</td>");
			out.print("</tr>");
		} %>
	</table>
</body>
</html>