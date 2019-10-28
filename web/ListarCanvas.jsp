<%-- 
    Document   : ListarCanvasx
    Created on : 08/10/2019, 00:05:59
    Author     : davi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.ifmt.incubadorabemcanvas.canvas.controler.CanvasControler"%>
<%@page import="java.util.List"%>
<%@page import="br.edu.ifmt.incubadorabemcanvas.canvasDAO.CanvasDAO"%>
<%@page import="br.edu.ifmt.incubadorabemcanvas.entidade.cavas.Canvas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script src="js/jquery-3.3.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="css/bootstrap.min.css"></script>
        <title>Criar Canvas</title>

    </head>

    <body>



        <h1>Cadastro de Canvas</h1>
        <form action="index.html" method="get">
            <label>  Canvas Criado com sucesso  :</label><br/>

            <h1>Bem vindo ao Nucleo Incubador</h1>
            <%

                List<Canvas> canvas = CanvasControler.listar();
                Canvas cadaCanvas = new Canvas();
                for (int i = 0; i < canvas.size(); i++) {
                    cadaCanvas = canvas.get(i);
                    out.print(cadaCanvas.getNomeCanvasWeb() + "<br/>");
                }

            %>

            <input type="submit" value="Voltar">





        </form>

    </body>
    <footer> </footer>
</html>
