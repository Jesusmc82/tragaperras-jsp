<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body background="texturaverde.jpg">
        <div class="contenedor">
            <h1 class="cabecera"><u> TRAGAPERRAS</u></h1>
    </div>
        <div class="contenedor">
        <%

            int numeroFigura = 0;
            int numeroFigura1 = 0;
            int numeroFigura2 = 0;
            int numeroFigura3 = 0;
            String nombreFigura = "";

            for (int i = 0; i < 3; i++) {
              numeroFigura = (int) (Math.random() * 5);
              switch (i) {
                case 0:
                  numeroFigura1 = numeroFigura;
                  break;
                case 1:
                  numeroFigura2 = numeroFigura;
                  break;
                case 2:
                  numeroFigura3 = numeroFigura;
                  break;
              }

              switch (numeroFigura) {
                case 0:
                  nombreFigura = "corazón";
                  break;
                case 1:
                  nombreFigura = "diamante";
                  break;
                case 2:
                  nombreFigura = "herradura";
                  break;
                case 3:
                  nombreFigura = "campana";
                  break;
                case 4:
                  nombreFigura = "limón";
                  break;
                default:
              } // switch

              out.print("<img height=\"220px\" src=\"" + nombreFigura + ".png\"> &nbsp;");
            }
         %>
        </div>
        <div class="contenedor">
            <%
            if ((numeroFigura1 != numeroFigura2) && (numeroFigura2 != numeroFigura3) && (numeroFigura1 != numeroFigura3)) {
              out.println("<p class=\"premio\">\nLo siento, ha perdido.</p>");
            } else if ((numeroFigura1 == numeroFigura2) && (numeroFigura2 == numeroFigura3)) {
              out.println("<p class=\"premio\">\nEnhorabuena, ha ganado 10 monedas.</p>");
            } else {
              out.println("<p class=\"premio\">\nBien, ha recuperado su moneda.</p>");
            }
        
        %>
        </div>
        <div class="contenedor">
            <a href="javascript:document.location.reload();"><p align-text="center"><button> Nueva Tirada</button></p></a>
        </div>
    </body>
</html>
