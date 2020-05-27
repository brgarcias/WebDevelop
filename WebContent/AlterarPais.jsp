<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>cerveja.biz - Alterar Pais</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                
                
                
                
                <div id="main" class="card">
                    <h3 class="card-header display-4 alert alert-info">Alterar Pais #${pais.id }</h3>
                    <!-- Formulario para alteração de paises -->
                    <form action="controller.do" method="post">
                        <!-- area de campos do form -->
                        <input type="hidden" name="id" value="${pais.id }" />
                        <div class="card-body">
                            <div class="form-group col-md-12">
                                <h4><label for="nome">Nome do País</label></h4>
                                <input type="text" class="form-control" name="nome" id="nome" placeholder="nome do país" value="${pais.nome }">
                            </div>
                            <div class="form-group col-md-6">
                                <h4><label for="fone">População do País</label></h4>
                                <input type="text" class="form-control" name="populacao" id="populacao" placeholder="população do país" value="${pais.populacao }">
                            </div>
                            <div class="form-group col-md-6">
                                <h4><label for="area">Área do País</label></h4>
                                <input type="text" class="form-control" name="area" id="area" placeholder="área do país" value="${pais.area }">
                            </div>
	                        <div id="actions" class="row">
	                            <div class="col-md-12">
	                                <button type="submit" class="btn btn-outline-success" name="command" value="AlterarPais">Salvar</button>
	                                <a href="ListarPaises.jsp" class="btn btn-outline-danger">Cancelar</a>
	                            </div>
	                        </div>
                        </div>
                    </form>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>