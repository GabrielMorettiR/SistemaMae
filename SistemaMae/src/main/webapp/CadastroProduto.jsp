<%-- 
    Document   : CadastroProduto
    Created on : 28/03/2021, 12:03:46
    Author     : Gabriel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro De Produtos</title>
    </head>
    <body>
        <%@include file="/Utils/Menu.jsp" %>
        <div class="row">
            <div class="col">
                <h1 class="titulo">Cadastro de Produtos</h1>
                <form action="CadastrarProduto" method="POST">
                    <input name="idprod" value="${idprod}" hidden>
                    <p class="inputTitle"><i class="fa fa-file-text" aria-hidden="true"></i> &nbsp; Nome Produto</p>
                    <input name="nome" required>
                    <p class="inputTitle"><i class="fa fa-plus-square" aria-hidden="true"></i> &nbsp; Quantidade</p>
                    <input type="number" name="qtd" required>
                    <p class="inputTitle"><i class="fa fa-usd" aria-hidden="true"></i> &nbsp; Valor de Custo</p>
                    <input  type="number" step="0.01" name="custo" required>
                    <p class="inputTitle"><i class="fa fa-money" aria-hidden="true"></i> &nbsp; Valor de Revenda</p>
                    <input type="number" step="0.01" name="revenda" required>
                    <p class="inputTitle"><i class="fa fa-list" aria-hidden="true"></i> &nbsp; Categoria</p>
                    <select name="categoria" id="selectCateg">
                        <c:forEach var="categorias" items="${categorias}">
                            <option value="${categorias.id}">${categorias.titulo}</option>
                        </c:forEach>
                    </select>
                    <p class="inputTitle"><i class="fa fa-check" aria-hidden="true"></i> &nbsp; Status
                        <input type="checkbox" name="status">
                    </p>
                    <button type="submit" class="submit">Enviar</button>
                </form>
            </div>
        </div>

    </body>
</html>
