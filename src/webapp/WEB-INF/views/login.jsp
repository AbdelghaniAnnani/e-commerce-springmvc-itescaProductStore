<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="En Itesca Product Store puedes comprar articulos en linea.">
    <meta name="author" content="Cesar Dario Garcia Jimenez">
    <link rel="icon" href="<c:url value="/resources/site-images/favicon.ico" />">

    <title>Tienda Itesca</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <!-- Google Fonts CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">

    <!-- Login Form CSS -->
    <link href="<c:url value="/resources/css/loginForm.css" />" rel="stylesheet">

    <!-- Awesome Font CSS -->
    <link href="<c:url value="/resources/lib/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">


</head>
<!-- NAVBAR
================================================== -->
<body>
<!-- Navigation -->
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-fixed-top nav-grouped">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<c:url value="/" />"/>
                    <img src="<c:url value="/resources/site-images/itesca-tienda.png" />">
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav pull-left">
                        <li><a href="<c:url value="/"/>">
                            <span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                        <li><a href="<c:url value="/productos"/>">
                            <span class="glyphicon glyphicon-th-list"></span> Productos en Venta</a></li>
                        <c:if test="${pageContext.request.userPrincipal.name != null && pageContext.request.userPrincipal.name != 'admin'}">
                            <li><a href="<c:url value="/customer/cart" />">
                                <span class="glyphicon glyphicon-shopping-cart"></span> Carro de Compras</a></li>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                            <li><a href="<c:url value="/admin" />">
                                <span class="glyphicon glyphicon-off"></span> Menu Administrador</a></li>
                        </c:if>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>
                                <span class="glyphicon glyphicon-user"></span> ${pageContext.request.userPrincipal.name}
                            </a>
                            </li>
                            <li><a href="<c:url value="/j_spring_security_logout" />">
                                <span class="glyphicon glyphicon-share-alt"></span> Logout</a></li>
                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/registro" />">
                                <span class="glyphicon glyphicon-plus-sign"></span> Crear Cuenta</a></li>
                            <li><a href="<c:url value="/login" />">
                                <span class="glyphicon glyphicon-user"></span> Iniciar Sesion</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div><!-- /navigation -->

<div class="container">
    <div class="page-header center">
        <h1>TIENDA ITESCA
            <small>Entrar</small>
    </div>
</div>
<!-- Top content -->
<div class="top-content">
    <div class="container">
        <c:if test="${not empty msg}">
            <div class="msg alert alert-info">
                <strong>${msg}</strong>
            </div>
            <c:redirect url="/login"/>
        </c:if>
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3 form-box">

                <div class="form-top">
                    <div class="center">
                        <h3 style="color:#3e8f3e">Iniciar Sesion </h3>
                    </div>
                </div>
                <div class="form-bottom">
                    <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                        <c:if test="${not empty error}">
                            <div class="error" style="color: red"> ${error} </div>
                        </c:if>
                        <div class="form-group">
                            <label class="sr-only" for="username">Usuario</label>
                            <input type="text" name="username" placeholder="Usuario..."
                                   class="form-username form-control" id="username" tabindex="1">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="password"> Contrase&ntildea </label>
                            <input type="password" name="password" placeholder="Contrase&#241;a..."
                                   class="form-password form-control" id="password" tabindex="2">
                        </div>
                        <br>
                        <button type="submit" value="Submit" class="btn btn-primary" tabindex="3">Entrar</button>
                        <input type="hidden" name="${_csrf.parameterName}" value="${csrf.token}"/>
                    </form>
                </div>
            </div>
        </div>
        <br>
        <br>
        <div class="description">
            <h4>
                &iquest;Aun no eres miembro? <br><br>
                <a class="label label-success" href="<c:url value="/registro"/>" tabindex="4">
                    registrate
                </a>
            </h4>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/templates/footer.jsp" %>
<script>
    $(document).ready(function () {
        /*
         Form validation
         */
        $('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function () {
            $(this).removeClass('input-error');
        });

        $('.login-form').on('submit', function (e) {

            $(this).find('input[type="text"], input[type="password"], textarea').each(function () {
                if ($(this).val() == "") {
                    e.preventDefault();
                    $(this).addClass('input-error');
                }
                else {
                    $(this).removeClass('input-error');
                }
            });
        });
    });
</script>