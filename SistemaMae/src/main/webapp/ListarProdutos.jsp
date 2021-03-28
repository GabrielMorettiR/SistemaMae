<%-- 
    Document   : ListarProdutos
    Created on : 28/03/2021, 12:28:20
    Author     : Gabriel
--%>

<%@page import="Entidade.Categoria"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="/Utils/Menu.jsp" %>
        <div class="row">
            <div class="col">
                <h1 class="titulo">Listagem de Produtos</h1>
                <table class="tableList">
                    <th>Nome Produto</th>
                    <th>Quantidade</th>
                    <th>Custo</th>
                    <th>Revenda</th>
                    <th>Status</th>
                    <th>Categoria</th>
                    <tbody class="tableListBody">
                        <c:forEach var="produto" items="${GetProdutos}">
                            <tr>
                                <td hidden>${produto.idCategoria}</td>
                                <td>${produto.nome}</td>
                                <td>${produto.quantidade}</td>
                                <td>R$ ${produto.custo}</td>
                                <td>R$ ${produto.revenda}</td>
                                <td>${produto.status}</td>
                                <td>${produto.nomeCateg}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
