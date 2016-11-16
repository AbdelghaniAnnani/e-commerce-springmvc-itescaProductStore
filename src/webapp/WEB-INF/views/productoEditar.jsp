<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="templates/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <h1>Modificar Producto</h1>
        <br>
        <br>

        <form:form action="${pageContext.request.contextPath}/admin/inventario/editar"
                   method="post" commandName="producto" enctype="multipart/form-data">
            <form:hidden path="producto_id" value="${product.producto_id}"/>

            <div class="form-group">
                <label for="nombre"> Nombre del Producto</label> <form:errors path="nombre" cssStyle="color: red"/>
                <form:input path="nombre" id="nombre" class="form-control" value="${producto.nombre}"/>
            </div>

            <div class="form-group">
                <label for="manufacturante"> Manufacturante </label>
                <form:input path="manufacturante" id="manufacturante" class="form-control"
                            value="${producto.manufacturante}"/>
            </div>

            <div class="form-group">
                <label for="categoria"> Categoria </label> <form:errors path="categoria" cssStyle="color: red"/>
                <form:select path="categoria" id="categoria" class="form-control" items="${lista_categoria}"/>
            </div>

            <div class="form-group">
                <label for="descripcion"> Descripcion del Producto</label>
                <form:textarea path="descripcion" id="descripcion" class="form-control"
                               value="${producto.descripcion}"/>
            </div>

            <div class="form-group">
                <label for="condicion"> Condicion del Producto</label>
                <br>
                <label class="checkbox-inline">
                    <form:radiobutton path="condicion" id="condicion" value="Nuevo"/> Nuevo </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="condicion" id="condicion" value="Usado"/> Usado </label>
            </div>

            <div class="form-group">
                <label for="precio"> Precio $MXN</label> <form:errors path="precio" cssStyle="color: red"/>
                <form:input path="precio" id="precio" class="form-control" value="${producto.precio}"/>
            </div>

            <div class="form-group">
                <label for="unidades_en_existencia"> Unidades disponibles </label> <form:errors
                    path="unidades_en_existencia" cssStyle="color: red"/>
                <form:input path="unidades_en_existencia" id="unidades_en_existencia" class="form-control"
                            value="${producto.unidades_en_existencia}"/>
            </div>

            <%-- SUBIR IMAGEN DE PRODUCTO  ===================--%>
            <div class="form-group">
                <label class="control-label" for="imagen">Subir Imagen</label>
                <form:input path="imagen" id="imagen" type="file" class="form:input-large"/>
            </div>

            <%-- SUBMIT/CANCEL BUTTON  ===========--%>
            <a href="<c:url value="/admin/inventario" />" class="btn btn-default"> Cancelar </a>
            <input type="submit" value="Guardar" class="btn btn-primary">
        </form:form>

    </div>
</div>

<%@include file="templates/footer.jsp" %>
