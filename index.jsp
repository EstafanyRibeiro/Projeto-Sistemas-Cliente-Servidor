<%-- 
    Document   : index
    Created on : 14 de mai de 2022, 16:35:16
    Author     : estafanyribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
float resultado = 0;
float num1 = 0;
float num2 = 0;
    
if (request.getMethod() == "POST") {
    num1 = Float.parseFloat(request.getParameter("num1"));
    num2 = Float.parseFloat(request.getParameter("num2"));
       
    if (request.getParameter("somar") != null){
        resultado = num1 + num2;
    } else if (request.getParameter("dividir") != null) {
    resultado = num1 / num2;
    } else if (request.getParameter("media") != null) {
    resultado = (num1 + num2)/ 2;
    }
}


%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto Sistemas</title>
    </head>
    <body>
        
        <style type="text/css">
            body {
                font-family: sans-serif, helvetica;
                margin: 0px;
            }
            .container {
                width: 100vw;
                height: 100vh;
                display: flex;
                flex-direction: row;
                justify-content: center;
                align-items: center;
                background-color: #ffcc33;
            }
            .box {
                width: 300px;
                height: 300px;
                background-color:#ffcc66;
                text-align: center;
            }
            
        </style>
            
        <div class="container">
            <div class="box">
              <h1> Projeto Sistemas </h1> <br /><br />
              <form method="post">
              Primeiro numero: <br />
              <input type="number" required name ="num1" value="<%= num1 %>" /> <br />
              Segundo numero: <br />
              <input type="number" required name="num2" value="<%= num2 %>" /> <br /> <br />
              <input type="submit" value="Somar" name ="somar" />
              <input type ="submit" value="Dividir" name="dividir" />
              <input type="submit" value ="Media" name="media" /> 
              <br /> <br />
              Resultado: <%= resultado %>
            
              </form>
            </div>
        </div>
    </body>
</html>
