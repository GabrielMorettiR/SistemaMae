<%-- 
    Document   : Menu
    Created on : 28/03/2021, 12:52:09
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa&display=swap" rel="stylesheet"><!--'Comfortaa', sans-serif;-->
        <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet"><!--'Varela Round', sans-serif;-->
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400&display=swap" rel="stylesheet"><!--'Jost', sans-serif;-->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap" rel="stylesheet"><!--'Poppins', sans-serif;-->
        <link href="Utils/padrao.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <div id="sideMenu" class="sideMenu">
            <a class="toggleMenu" onclick="toggleNav()"><i class="fa fa-bars"></i></a>
            <a class="menuLink" href="ListarProdutos">Ver Produtos</a>
            <a class="menuLink" href="CadastrarProduto">Novo Produto</a>
        </div>
        <div>
            <a class="toggleMenu" onclick="toggleNav()"><i class="fa fa-bars"></i></a>
        </div>

    </body>
    <script src="https://use.fontawesome.com/78c28665b1.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
                var a = 0;
                function toggleNav() {

                    if (a === 0) {
                        document.getElementById("sideMenu").style.width = "200px";
//                        $('body').css('padding-left', '200px');
                        a = 1;
                    } else {
                        document.getElementById("sideMenu").style.width = "0";
//                        $('body').css('padding-left', '10px');
                        a = 0;
                    }
                }
    </script>
</html>
