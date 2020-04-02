<%@page import="java.util.*"%>
<%@page import="trabalhoFinal.Adotante"%>
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
		Adotante adotante = new Adotante();
		adotante.setNome(request.getParameter("nome"));
		adotante.setEndereco(request.getParameter("endereco"));
		adotante.setCidade(request.getParameter("cidade"));
		adotante.setUf(request.getParameter("uf"));
		adotante.setTelefone(request.getParameter("telefone"));
		adotante.setEmail(request.getParameter("email"));
		adotante.setCpfCnpj(Integer.parseInt(request.getParameter("cpfCnpj")));
		adotante.setIdade(Integer.parseInt(request.getParameter("idade")));
		adotante.setEspaco(Integer.parseInt(request.getParameter("espaco")));
		adotante.setAtividadeFisica(Integer.parseInt(request.getParameter("atividadeFisica")));
		adotante.setAtividadeFisicaAcompanhado(Integer.parseInt(request.getParameter("atividadeFisicaAcompanhado")));
		adotante.setTempoDisponivel(Integer.parseInt(request.getParameter("tempoDisponivel")));
		adotante.setIdadeInteresse(Integer.parseInt(request.getParameter("idadeInteresse")));
		adotante.setTamanhoInteresse(Integer.parseInt(request.getParameter("tamanhoInteresse")));
		
		List <Adotante> adotantes;
		if (session.getAttribute("adotantes") == null){
			adotantes = new ArrayList<Adotante>();
			session.setAttribute("adotantes", adotantes);
		}else
			adotantes = (ArrayList)session.getAttribute("adotantes");
		
		adotantes.add(adotante);
	%>
	<script>
		window.location.href='index.jsp';
	</script>
</body>
</html>