<%-- 
    Document   : horario
    Created on : 25 de out. de 2021, 20:27:43
    Author     : isabe
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%    
    LocalDateTime now = LocalDateTime.now();
    
    Horario agora = new Horario();
    agora.setHora(now.getHour());
    agora.setMinuto(now.getMinute());
    agora.setSegundo(now.getSecond());
    
    Horario intervalo = new Horario(20, 40, 0);
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Isabela - Horário</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
         
        <br>
        <div style="text-align:center">
        <h2>Classe - Horário
            <img src="https://image.flaticon.com/icons/png/512/62/62834.png" style="width:50px">
        </h2>
        
        <hr>   
            <h3>Horário atual:</h3>
            <div><%= agora.getHorario() %></div>
            <hr>
            <h3>Horário do intervalo</h3>
            <div><%= intervalo.getHorario() %></div>
        </div>
        
    </body>
</html>
