<%-- 
    Document   : index.jsp
    Created on : 25 de out. de 2021, 20:08:16
    Author     : isabela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Isabela - Index</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
         
         <div class="container">             
             <h1>Início</h1>             
         </div>
         
        
    </body>
</html>

<style>
    
body {    
    margin: 0px;
    width: 100vw;
    height: 100vh;
    overflow-x: hidden;   
}
    
.container {

    width: 100vw;
    height: 90vh;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
}


</style>
