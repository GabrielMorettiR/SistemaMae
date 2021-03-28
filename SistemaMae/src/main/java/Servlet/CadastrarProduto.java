/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.CategoriaDAO;
import DAO.ProdutoDAO;
import Entidade.Categoria;
import Entidade.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
public class CadastrarProduto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Categoria> categorias = CategoriaDAO.getCategorias();
        request.setAttribute("categorias", categorias);
        
        RequestDispatcher rd = getServletContext()
                .getRequestDispatcher("/CadastroProduto.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        int qtd = Integer.parseInt(request.getParameter("qtd"));
        double custo = Double.parseDouble(request.getParameter("custo"));
        double revenda = Double.parseDouble(request.getParameter("revenda"));
        String stat = request.getParameter("status");
        int categoria = Integer.parseInt(request.getParameter("categoria"));
                
        boolean status = false;
        if(stat != null){
            status = true;
        }
        
        Produto p = new Produto();
        p.setNome(nome);
        p.setQuantidade(qtd);
        p.setCusto(custo);
        p.setRevenda(revenda);
        p.setStatus(status);
        p.setIdCategoria(categoria);
        
        try {
            ProdutoDAO.cadProduto(p);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CadastrarProduto.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
