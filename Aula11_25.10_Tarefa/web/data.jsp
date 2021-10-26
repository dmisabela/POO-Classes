<%-- 
    Document   : data
    Created on : 25 de out. de 2021, 20:27:29
    Author     : isabe
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Data padrão = new Data();
    
    Data hoje = new Data();
    hoje.setDia(25);
    hoje.setMês(10);
    hoje.setAno(2021);
    
    Data isabelaNiver = new Data(8, 4, 2002);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Isabela - Data</title>
    </head>
    <body>        
         <%@include file="WEB-INF/jspf/header.jspf"%>
         
        <br>
        <div style="text-align:center">
        <h2>Classe - Data
            <img src="https://i.pinimg.com/736x/74/0f/f3/740ff3b8229db0c82640abf12a6af392.jpg" style="width:50px">
        </h2>
        
        <hr>   
            <h3>Data padrão da classe</h3>
            <div><%= padrão.getDia() %>/<%= padrão.getMês() %>/<%= padrão.getAno() %></div>
            <br>
            <h3>Data de hoje:</h3>
            <div><%= hoje.getData() %></div>
            <hr>
            <h3>Aniversário - Isabela
            <img src="https://icons-for-free.com/iconfiles/png/512/line+version+svg+birthday+cake-1319964491274947706.png" style="width:50px">
            </h3>
            <div><%= isabelaNiver.getData() %></div>
        </div>
    </body>
</html>