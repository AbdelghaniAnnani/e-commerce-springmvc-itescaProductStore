<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/header.jsp" %>

<!-- Page Content -->
<div class="container" ng-app="cartApp" ng-controller="cartCtrl">

    <!-- Portfolio Item Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">${producto.nombre}
                <small> ${producto.manufacturante}</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <!-- Portfolio Item Row -->
    <div class="row">

        <div class="col-md-6">
            <img class="img-responsive detalles"
                 src="<c:url value="/resources/product_images/${producto.producto_id}.png" />"
                 alt="${producto.nombre}">
        </div>

        <div class="col-md-6">
            <h3 class="text-info">Descripcion</h3>
            <p>${producto.descripcion}</p>
            <h3 class="text-info">Detalles de Producto</h3>
            <table class="table table-hover table-condensed">
                <thead>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                </thead>
                <tr>
                    <td><h4>Marca</h4></td>
                    <td><h4>${producto.manufacturante}</h4></td>
                </tr>
                <tr>
                    <td><h4>Categoria</h4></td>
                    <td><h4>${producto.categoria}</h4></td>
                </tr>
                <tr>
                    <td><h4>Condicion</h4></td>
                    <td><h4>${producto.condicion}</h4></td>
                </tr>
                <tr>
                    <td><h4>Unidades Disponibles:</h4></td>
                    <td><h4>${producto.unidades_en_existencia}</h4></td>
                </tr>
                <tr>
                    <td><h4>Precio:</h4></td>
                    <td><h4 class="precio">$${producto.precio} MXN</h4></td>
                </tr>
                <tr>
                    <%-- the rowspan attr is used as a hack to override the table-hover effect --%>
                    <td rowspan="2">
                        <div class="pager">
                            <li>
                                <a href="javascript:history.back()">
                                    <span class="glyphicon glyphicon-backward"></span> Volver
                                </a>
                            </li>
                        </div>
                    </td>
                    <td rowspan="2">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <a href="#" class="btn btn-primary" ng-click="addToCart(${producto.producto_id})"
                               data-toggle="modal" data-target="#myModal">
                                Comprar <span class="glyphicon glyphicon-usd"></span></a>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <button type="button" href="<spring:url value="/login"/>" class="btn btn-primary">
                                Comprar <span class="glyphicon glyphicon-usd"></span></button>
                        </c:if>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn btn-danger pull-right" data-dismiss="modal">Cerrar</button>
                <h3 class="modal-title" style="text-shadow: 1px 1px 2px dodgerblue"> Operacion Exitosa</h3>
            </div>
            <div class="modal-body">
                <h3 style="text-shadow: 1px 1px 2px darkorchid">El Producto se a&#241;adio a tu carrito de compras con
                    exito.</h3>
                <br>
            </div>
        </div>

    </div>
</div>

<!-- /.row -->

<script src="/resources/js/controller.js" type="text/javascript"></script>
<%@include file="/WEB-INF/views/templates/footer.jsp" %>
