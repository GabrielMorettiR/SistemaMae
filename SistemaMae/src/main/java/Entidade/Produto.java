/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidade;

import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author Gabriel
 */

@Getter
@Setter
public class Produto {

    private int id;
    private String nome;
    private int quantidade;
    private double custo;
    private double revenda;
    private boolean status;
    private int idCategoria;
    private String nomeCateg;

    public Produto() {
    }
    
    public Produto(String nome, int quantidade, double custo, double revenda, boolean status, int categ, String nomeCateg) {
        this.nome = nome;
        this.quantidade = quantidade;
        this.custo = custo;
        this.revenda = revenda;
        this.status = status;
        this.idCategoria = categ;
        this.nomeCateg = nomeCateg;
    }
    
    public Produto(int id, String nome, int quantidade, double custo, double revenda, boolean status, int categ, String nomeCateg) {
        this.id = id;
        this.nome = nome;
        this.quantidade = quantidade;
        this.custo = custo;
        this.revenda = revenda;
        this.status = status;
        this.idCategoria = categ;
        this.nomeCateg = nomeCateg;
    }
}
