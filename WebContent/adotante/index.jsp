<%@page import="java.util.*"%>
<%@page import="trabalhoFinal.Adotante"%>
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
		List<Adotante> adotantes;
		if (session.getAttribute("adotantes") == null) {
			adotantes = new ArrayList<Adotante>();
			session.setAttribute("adotantes", adotantes);
		} else
			adotantes = (ArrayList<Adotante>) session.getAttribute("adotantes");

		out.print(" Usuários Cadastrados: " + adotantes.size());
	%>
	<table>
		<tr>
			<th>Nome</th>
			<th>Telefone</th>
			<th>Email</th>
			<th>Endereço</th>
		</tr>
		<% for (Adotante adotante : adotantes){ 
			out.print("<tr>");
			out.print("<td>"+adotante.getNome()+"</td>");
			out.print("<td>"+adotante.getTelefone()+"</td>");
			out.print("<td>"+adotante.getEmail()+"</td>");
			out.print("<td>"+adotante.getEndereco()+", "+adotante.getCidade()+" - "+adotante.getUf()+"</td>");
			out.print("</tr>");
		} %>
	</table>
</body>
</html>