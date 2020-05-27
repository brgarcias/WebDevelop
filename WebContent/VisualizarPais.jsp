<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>cerveja.biz - Visualizar País</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
                <!-- Modal -->
                <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h4 class="modal-title" id="modalLabel">Excluir País</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body lead">
                                Deseja realmente excluir este país?
                            </div>
                            <div class="modal-footer">
                                <form action="controller.do" method="post">
                                    <input type="hidden" name="id" value="${pais.id }" />
                                    <button type="submit" class="btn btn-outline-success" name="command" value="ExcluirPais">Sim</button>
                                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal">N&atilde;o</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                <div id="main" class="card">
                    <h3 class="card-header display-4 alert alert-info">Visualizar País #${pais.id }</h3>
                    <div class="card-body">
                        <div class="col-md-12">
                            <h4>Nome</h4>
                            <p class="lead">
                                ${pais.nome }
                            </p>
                        </div>

                        <div class="col-md-6">
                            <h4>População</h4>
                            <p class="lead">
                                ${pais.populacao }
                            </p>
                        </div>
                        <div class="col-md-6">
                            <h4>Área</h4>
                            <p class="lead">
                                ${pais.area }
                            </p>
                        </div>
	                    <div id="actions" class="row">
	                        <div class="col-md-12">
	                            <a href="controller.do?command=EditarPais&id=${pais.id }" class="btn btn-outline-warning">Editar</a>
	                            <a href="#" class="btn btn-outline-danger" data-toggle="modal" data-target="#delete-modal">Excluir</a>
	                            <a href="ListarPaises.jsp" class="btn btn-outline-dark">Voltar</a>
	                        </div>
	                    </div>
                    </div>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>