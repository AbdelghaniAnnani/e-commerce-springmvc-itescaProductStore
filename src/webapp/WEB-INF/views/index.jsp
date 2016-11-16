<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/templates/header.jsp" %>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide base-image"
                 src="resources/site-images/cover1.jpg"
                 alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Bienvenidos a la Tienda ITESCA!</h1>
                    <p>Encuentra el regalo perfecto para ti.</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide base-image"
                 src="resources/site-images/cover-4.jpg"
                 alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Expresa tu personalidad!</h1>
                    <p>Expresa tu estilo luciendo el conjunto perfecto.</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide base-image"
                 src="resources/site-images/cover-8.jpg"
                 alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Que la musica te acompa&ntildee!</h1>
                    <p>En todo momento encuentra la cancion perfecta para ti.</p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle"
                 src="resources/site-images/circle-1.jpg"
                 width="140" height="140">
            <h2>HD Cam Sumergible</h2>
            <p>Que no se te escape ningun momento especial, capturalos en HD con nuestros productos.</p>
            <p><a class="btn btn-default" href="/productos" role="button">Mas &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle"
                 src="resources/site-images/circle-3.jpg"
                 width="140" height="140">
            <h2>Abrigo para Dama</h2>
            <p>Haz de el clima tu mejor aliado, luce tu estilo con este abrigo de temporada.</p>
            <p><a class="btn btn-default" href="/productos" role="button">Mas &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle"
                 src="resources/site-images/circle-2.jpg"
                 width="140" height="140">
            <h2>Desktop Gamer</h2>
            <p>Disfruta tus juegos en HD con este ordenador de escritorio con graficos dedicados a darte la mejor experiencia de juego.</p>
            <p><a class="btn btn-default" href="/productos" role="button">Mas &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
</div>
<br>
<br>
<!-- /.container -->

<%@include file="/WEB-INF/views/templates/footer.jsp" %>