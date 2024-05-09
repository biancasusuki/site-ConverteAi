
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado da Calculadora</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Space+Mono:wght@400;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="resultadostyle.css">
</head>
<body>
	<header>
		<img class="img" src="logo.png">
		<nav>
			<ul class="menu">
				<li><a href="home.html">Home</a></li>
				<li>  |  </li>
				<li><a href="decimalParaBinario.html">Decimal para Binario, Hexadecimal e Octa</a></li>
				<li>  |  </li> 
				<li><a href="imc.html">IMC</a></li>
				<li>  |  </li>
				<li><a href="calculadora.html">Calculadora</a></li>
			</ul>
		</nav>
			<ul class="conta">
            <li><a href="login.html" style="color: white;">Login</a></li>
			<li><a href="cadastro.html" style="color: white;">Criar Conta</a></li>
		</ul>
	</header>

	<main>
	
	<div class="caixa" style="height: 320px;
	width: 340px;
	background-color: hsl(183, 100%, 15%);
	margin: 20px auto;
	border-radius: 30px; color: white; padding:30px">
	
	    <%
    String svalorA = request.getParameter ("ValorA");
    String svalorB = request.getParameter ("ValorB");
    String sopcao = request.getParameter ("opcao");
    
    double dvalorA = Double.parseDouble(svalorA);
    double dvalorB = Double.parseDouble(svalorB);
    double resultado = 0;

        if (sopcao.equals("+")){
            resultado = dvalorA + dvalorB;
        }else if(sopcao.equals("-")){
            resultado = dvalorA - dvalorB ;
        }else if(sopcao.equals("*")){
            resultado = dvalorA * dvalorB ;
        }else if(sopcao.equals("/")){
            resultado = dvalorA / dvalorB ;
        
        }
        
        
    out.print ("Valor A informado foi: <br>"+ dvalorA +"<br>");
    out.print ("Valor B informado foi: <br>"+ dvalorB +"<br>");



    out.print ("Resultado: <br>"+resultado);

%>

</div>
	</main>
	
	
	<footer>
		<ul class="contatos">
			<li>Email</li>
			<li>Telefone</li>
			<li>Instagram</li>
			<li>Twitter</li>
		</ul>
		
	</footer>

</body>
</html>