<%@page import="java.util.*"%>
<%@page import="trabalhoFinal.Instituicao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>	
	<%
		Instituicao instituicao = new Instituicao();
		instituicao.setNome(request.getParameter("nome"));
		instituicao.setEndereco(request.getParameter("endereco"));
		instituicao.setCidade(request.getParameter("cidade"));
		instituicao.setUf(request.getParameter("uf"));
		instituicao.setTelefone(request.getParameter("telefone"));
		instituicao.setEmail(request.getParameter("email"));
		instituicao.setCpfCnpj(Integer.parseInt(request.getParameter("cpfCnpj")));
		instituicao.setFacebook(request.getParameter("facebook"));
		instituicao.setTwitter(request.getParameter("twitter"));
		instituicao.setInstagram(request.getParameter("instagram"));
		
		
		List <Instituicao> adotantes;
		if (session.getAttribute("instituicaos") == null){
			adotantes = new ArrayList<Instituicao>();
			session.setAttribute("instituicaos", adotantes);
		}else
			adotantes = (ArrayList)session.getAttribute("instituicaos");
		
		adotantes.add(instituicao);
	%>
	<script>
		window.location.href='index.jsp';
	</script>
</body>
</html>