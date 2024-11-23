<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado</title>
</head>
<body>
    <h2>Resultado da Calculadora</h2>

    <%
        // Recebendo os parâmetros do formulário
        double numero1 = Double.parseDouble(request.getParameter("numero1"));
        double numero2 = Double.parseDouble(request.getParameter("numero2"));
        String operacao = request.getParameter("operacao");

        double resultado = 0;
        String operacaoDescricao = "";

        // Realizando o cálculo baseado na operação
        switch (operacao) {
            case "soma":
                resultado = numero1 + numero2;
                operacaoDescricao = "Soma";
                break;
            case "subtracao":
                resultado = numero1 - numero2;
                operacaoDescricao = "Subtração";
                break;
            case "multiplicacao":
                resultado = numero1 * numero2;
                operacaoDescricao = "Multiplicação";
                break;
            case "divisao":
                if (numero2 != 0) {
                    resultado = numero1 / numero2;
                    operacaoDescricao = "Divisão";
                } else {
                    out.println("Erro: Não é possível dividir por zero!");
                    return;
                }
                break;
        }
    %>

    <p>O resultado de <%= numero1 %> <%= operacaoDescricao %> <%= numero2 %> é: <%= resultado %></p>

    <br>
    <a href="index.jsp">Voltar</a>
</body>
</html>
