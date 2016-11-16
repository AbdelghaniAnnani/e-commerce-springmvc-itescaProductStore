<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <div class="col-md-6"></div>
            <br>
            <h1 class="alert alert-success"> Datos del Comprador <small>  (confirme que su informacion sea correcta)</small></h1>
            <hr>
            <form:form commandName="order" class="form ">
                <h3>Informacion de Usuario: </h3>
                <div class="form-group">
                    <label for="name">Nombre</label>
                    <form:input path="cart.customer.customer_name" id="name" class="form-Control" tabindex="1"/>
                </div>
                <div class="form-group">
                    <label for="email"> Correo Electronico </label>
                    <form:input path="cart.customer.customer_email" id="email" class="form-control" tabindex="2"/>
                </div>
                <div class="form-group">
                    <label for="phone"> Telefono (10 digitos) </label>
                    <form:input path="cart.customer.customer_phone" id="phone" class="form-control" tabindex="3"/>
                </div>
                <hr>
                <h3 class="alert alert-warning">Registrar Informacion de Cobro: </h3>
                <div class="form-group">
                    <label for="titular_tarjeta">Titular Tarjeta (credito/debito)</label>
                    <form:input path="cart.customer.billingAddress.titular_tarjeta" id="titular_tarjeta"
                                class="form-control" onkeydown="upperCaseF(this)"
                                tabindex="4"/>
                </div>
                <div class="form-group">
                    <label for="billing_numero">Numero de Tarjeta </label>
                    <form:input path="cart.customer.billingAddress.numero_tarjeta" id="billing_numero"
                                class="form-control" maxlength="19"
                                tabindex="5"/>
                </div>
                <div class="form-group">
                    <label for="billing_fecha">Fecha de expiracion</label>
                    <form:input path="cart.customer.billingAddress.fecha_expiracion" id="billing_fecha"
                                class="form-control" maxlength="5"
                                tabindex="6"/>
                </div>
                <div class="form-group">
                    <label for="billing_codigo">Codigo de Seguridad</label>
                    <form:input path="cart.customer.billingAddress.codigo_seguridad" id="billing_codigo"
                                class="form-control" maxlength="3"
                                tabindex="7"/>
                </div>
                <input type="hidden" name="_flowExecutionKey"/>
                <br><br>

                <%-- CANCEL/NEXT  ===========--%>
                <button class="btn btn-danger" tabindex="9" name="_eventId_cancel"> Cancelar</button>
                <input type="submit" value="Continuar" class="btn btn-primary" tabindex="8"
                       name="_eventId_customerInfoCollected">


            </form:form>


        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/templates/footer.jsp" %>

