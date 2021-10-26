<%-- 
    Document   : contatos
    Created on : 25 de out. de 2021, 20:27:23
    Author     : isabela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Data"%>
<%@page import="model.Contato"%>
<%@page import="model.Base"%>


<!DOCTYPE html>
<%
    String error = null;
    
    try {
        
        if(request.getParameter("form-add")!=null){
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            int dia = Integer.parseInt(request.getParameter("nascimento.dia"));
            int mês = Integer.parseInt(request.getParameter("nascimento.mes"));
            int ano = Integer.parseInt(request.getParameter("nascimento.ano"));
            Contato c = new Contato(nome, telefone, new Data(dia, mês, ano));
            Base.getContatosList().add(c);
            response.sendRedirect(request.getRequestURI());
        }
        else if(request.getParameter("form-remove")!=null){
            int index = Integer.parseInt(request.getParameter("index"));
            Base.getContatosList().remove(index);
            response.sendRedirect(request.getRequestURI());
        }
    }
    
    catch(Exception ex) {
        error = ex.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Isabela - Contatos</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
         <br>
         
         <div style="text-align:center;">
             <h2>Contatos</h2>
             <hr>              
             <%if(error != null) {%>
                <div style="color: red">
                    <p>Ocorreu um erro: <%= error %></p>
                </div>
             <%}%>
             
        <form>
            <fieldset>
                <legend>Novo contato</legend>
                Nome:<br/><input type="text" name="nome"/><br/>
                Telefone:<br/><input type="text" name="telefone"/><br/>
                Data de nascimento:<br/>
                <input type="number" step="1" name="nascimento.dia"/>/
                <input type="number" step="1" name="nascimento.mes"/>/
                <input type="number" step="1" name="nascimento.ano"/>
                <br/><br/>
            </fieldset>
                <button 
                class="btn btn-primary btn-send"
                name="form-add"
                type="submit">Enviar</button>            
        </form>
             
        <hr>
        
        <table class="table table-hover">
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Nascimento</th>
                <th>Excluir</th>
            </tr>
            <%for(Contato c: Base.getContatosList()){%>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getNascimento().getData() %></td>
                <td>
                    <form>
                        <button type="submit" name="form-remove" value="Remover" class='btn-danger'>
                        <img src="https://cdn2.iconfinder.com/data/icons/designers-and-developers-icon-set/32/recyclebin-512.png" style="width:20px"/>
                        </button>    
                        <input type="hidden" name="index" value="<%= Base.getContatosList().indexOf(c) %>"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
             
             
       </div>
    </body>
</html>

<style>
   

.btn.btn-send {
    background-color: rgb(113, 65, 190);
    padding: 0px;
    font-weight: 700;
    font-size: 14px;
    height: 40px;
    width: 70px;
    border-radius: 3px;
    border: none;
    transition: all 0.218s;
}

.btn.btn-send:hover,
.btn.btn-send:active,
.btn.btn-send:focus {
    background-color: rgb(71, 3, 102);
}
    
</style>
