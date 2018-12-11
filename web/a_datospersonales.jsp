
<jsp:include page='views/header.jsp'></jsp:include>


<div class="container">
    <form class="col s12" action="/CrearDatosPersonales.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Insertar una nuevo dato personal</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="id_datos" name="id_datos" type="text" value="">
                <label for="id_datos" class="center-align">Id datos</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="nombre" name="nombre" type="text" value="">
                <label for="nombre" class="center-align">Nombre</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="A_paterno" name="A_paterno" type="text" value="">
                <label for="A_paterno" class="center-align">Apellido paterno</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="A_materno" name="A_materno" type="text" value="">
                <label for="A_materno" class="center-align">Apellido materno</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="edad" name="edad" type="text" value="" >
                <label for="edad" class="center-align">Edad</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="id_tipo" name="id_tipo" type="text" value="">
                <label for="id_tipo" class="center-align">Id tipo</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="id_usuario" name="id_usuario" type="text" value="">
                <label for="id_usuario" class="center-align">Id usuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>


        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">

            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Insertar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="datospersonales.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>