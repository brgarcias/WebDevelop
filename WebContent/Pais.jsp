<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!--bootstrap.min.css-->
<link rel="stylesheet" href="css/bootstrap.min.css" />

<!--style.css-->
<link rel="stylesheet" href="css/style.css" />

<title>Pais</title>
</head>
<body>	

<!-- Barra superior com os menus de navegação -->
		<c:import url="Menu.jsp"/>
		<!-- Card Principal -->
			<div class="card border-info mb-3">
			  <div class="card-header display-4 alert alert-info">Visualizar País #${pais.id}</div>
			  <div class="card-body text-info">
			    <h4 class="card-title">Nome</h4>
	            <p class="lead">${pais.nome}</p>
			  	<h4 class="card-title">Área</h4>
	            <p class="lead">${pais.area}</p>
	            <h4 class="card-title">População</h4>
	            <p class="lead">${pais.populacao}</p>
			   </div>
			</div>
            <div id="actions" class="row">
                <div class="col-md-12">
                    <a href="index.jsp" class="btn btn-outline-dark">Voltar para cadastro</a>
                </div>
            </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</body>
</html>