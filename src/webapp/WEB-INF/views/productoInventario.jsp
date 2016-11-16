<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@include file="templates/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <h1 style="text-align: center">Inventario</h1>
        <hr>
        <br>

        <h1>Productos</h1>
        <div class="table-responsive">
            <table class="table table-custom table-hover table-condensed">
                <thead>
                <tr class="bg-success">
                    <th>Photo Thumb</th>
                    <th>Nombre</th>
                    <th>Manufacturante</th>
                    <th>Categoria</th>
                    <th>Condicion</th>
                    <th>Precio</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <c:forEach items="${lista_productos}" var="producto">
                    <tr>
                        <td><img src="<c:url value="/resources/product_images/${producto.producto_id}.png" />" alt="image"></td>
                        <td>${producto.nombre}</td>
                        <td>${producto.manufacturante}</td>
                        <td>${producto.categoria}</td>
                        <td>${producto.condicion}</td>
                        <td><p class="precio"><fmt:formatNumber type="currency">${producto.precio}</fmt:formatNumber> MXN</p></td>
                        <td>
                            <!-- INFORMACION DE PRODUCTO -->
                            <a href="<spring:url value="/productos/productoDetalles/${producto.producto_id}" />"
                               class="btn btn-info">
                                Detalles <span class=" glyphicon glyphicon-info-sign"></span>
                            </a>
                        </td>
                        <td>
                            <!-- EDITAR PRODUCTO -->
                            <a href="<spring:url value="/admin/inventario/editar/${producto.producto_id}" />"
                               class="btn btn-success">
                                Editar <span class="glyphicon glyphicon-pencil"></span>
                            </a>
                        </td>
                        <td>
                            <!-- ELIMINAR PRODUCTO -->
                            <a href="<spring:url value="/admin/inventario/eliminar/${producto.producto_id}" />"
                               class="btn btn-danger">
                                Eliminar <span class="glyphicon glyphicon-remove"></span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <a class="btn btn-primary" href="<spring:url value="/admin/inventario/agregar" />">Agregar Producto</a>
        <br>
        <div class="pager">
            <br>
            <li>
                <a href="<c:url value="/admin"/>">
                    <span class="glyphicon glyphicon-backward"></span> Volver
                </a>
            </li>
        </div>
    </div>
</div>

<%@include file="templates/footer.jsp" %>