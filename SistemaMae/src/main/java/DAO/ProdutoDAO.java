/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.ConexaoBD;
import Entidade.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Gabriel
 */
public class ProdutoDAO {

    public static List<Produto> getProdutos() {

        List<Produto> produtos = new ArrayList();

        String query = "select p.ID, p.NOME,p.QUANTIDADE, p.CUSTO, p.REVENDA, p.STATUS, p.IDCATEGORIA, c.TITULO from produto as p inner join Categoria as c on p.IDCATEGORIA = c.ID";
        Connection con;
        try {
            con = ConexaoBD.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nomeproduto = rs.getString("nome");
                int qtd = rs.getInt("quantidade");
                double custo = rs.getDouble("custo");
                double revenda = rs.getDouble("revenda");
                boolean status = rs.getBoolean("status");
                int categ = rs.getInt("idcategoria");
                String nomecateg = rs.getString("titulo");
                produtos.add(new Produto(id, nomeproduto, qtd, custo, revenda, status, categ, nomecateg));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return produtos;
    }

    public static void cadProduto(Produto p) throws ClassNotFoundException, SQLException {

        Connection con = ConexaoBD.getConexao();
        String query = "insert into produto(nome, quantidade, custo, revenda, status, idcategoria) values (?,?,?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);

            ps.setString(1, p.getNome());
            ps.setInt(2, p.getQuantidade());
            ps.setDouble(3, p.getCusto());
            ps.setDouble(4, p.getRevenda());
            ps.setBoolean(5, p.isStatus());
            ps.setInt(6, p.getIdCategoria());

            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
