<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="templates/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <div class="col-md-6"></div>
            <h1><span class="label label-info">Registrate para poder realizar compras en el sitio !</span></h1>
            <br>
            <br>
            <h1>Registro de Usuario</h1>
        </div>
        <form:form action="${pageContext.request.contextPath}/registro"
                   method="post" commandName="customer">
            <h3>Informacion de Usuario: </h3>

            <div class="form-group">
                <label for="name"> Nombre Completo</label> <form:errors path="customer_name" cssStyle="color: red"/>
                <form:input path="customer_name" id="name" class="form-control" tabindex="1"/>
            </div>

            <div class="form-group">
                <label for="email"> Correo Electronico </label> <span style="color: #ff0000">${customer_email}</span>
                <form:input path="customer_email" id="email" class="form-control" tabindex="2"/>
            </div>

            <div class="form-group">
                <label for="phone"> Telefono (10 digitos) </label> <form:errors path="customer_phone"
                                                                                cssStyle="color: red"/>
                <form:input path="customer_phone" id="phone" class="form-control" tabindex="3"/>
            </div>

            <div class="form-group">
                <label for="username"> Nombre de Usuario </label> <span
                    style="color: #ff0000">${customer_username}</span>
                <form:input path="customer_username" id="username" class="form-control" tabindex="4"/>
            </div>

            <div class="form-group">
                <label for="password"> Contrase&#241;a </label> <form:errors path="customer_password"
                                                                             cssStyle="color: red"/>
                <form:password path="customer_password" id="password" class="form-control" tabindex="5"/>
            </div>

            <form:hidden path="billingAddress.titular_tarjeta" class="form-Control" />
            <form:hidden path="billingAddress.numero_tarjeta" class="form-Control" value=""/>
            <form:hidden path="billingAddress.fecha_expiracion" id="billingCity" class="form-Control" />
            <form:hidden path="billingAddress.codigo_seguridad" id="billingState" class="form-Control" />
            <form:hidden path="shippingAddress.calle" id="shippingStreet" class="form-Control" />
            <form:hidden path="shippingAddress.numero_apartamento" id="shippingApartmentNumber" class="form-Control"/>
            <form:hidden path="shippingAddress.ciudad" id="shippingCity" class="form-Control"/>
            <form:hidden path="shippingAddress.estado" id="shippingState" class="form-Control"/>
            <form:hidden path="shippingAddress.pais" id="shippingCountry" class="form-Control"/>
            <form:hidden path="shippingAddress.zip" id="shippingZip" class="form-Control"/>
            <br>
            <%-- SUBMIT/CANCEL BUTTON  ===========--%>
            <a href="<c:url value="/" />" class="btn btn-default" tabindex="19"> Cancelar </a>
            <input type="submit" value="Agregar" class="btn btn-primary" tabindex="18">
        </form:form>

    </div>
</div>


<%@include file="templates/footer.jsp" %>
