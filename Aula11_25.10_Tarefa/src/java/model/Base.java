/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author isabela
 */

public class Base {
    private static ArrayList<Contato> contatosList;
    public static ArrayList<Contato> getContatosList(){
        if(contatosList == null){
            contatosList = new ArrayList<>();
            contatosList.add(new Contato("Isabela", "(13)99111-0001", new Data(8, 4, 2002)));
            contatosList.add(new Contato("Rosana", "(13)99111-0002", new Data(4, 11, 1972)));
            contatosList.add(new Contato("Davi", "(13)99111-0003", new Data(24, 9, 2009)));
        }
        return contatosList;
    }
}