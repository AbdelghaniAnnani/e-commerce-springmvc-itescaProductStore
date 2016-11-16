<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Lista de Usarios</h1>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Nombre</th>
                <th>Email</th>
                <th>Telefono</th>
                <th>Nombre de usuario</th>
                <th>Estado</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customer_name}</td>
                    <td>${customer.customer_email}</td>
                    <td>${customer.customer_phone}</td>
                    <td>${customer.customer_username}</td>
                    <c:if test="${customer.enabled == true}">
                        <td>activo</td>
                    </c:if>
                    <c:if test="${customer.enabled == false}">
                        <td>inactivo</td>
                    </c:if>

                </tr>
            </c:forEach>
        </table>
        <div class="pager">
            <br>
            <li>
                <a href="<c:url value="/admin"/>">
                    <span class="glyphicon glyphicon-backward"></span> Volver
                </a>
            </li>
        </div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>