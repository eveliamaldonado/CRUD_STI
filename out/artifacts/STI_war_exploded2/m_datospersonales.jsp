
<%@ page import="controller.controllerdatos_personales" %>
<%@ page import="include.Datos_Personales" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%
    int id_datos = 0;
    controllerdatos_personales cc = new controllerdatos_personales();
    ArrayList<Datos_Personales> datos_personales = new ArrayList<Datos_Personales>();
    datos_personales = cc.obtenerdatos_personalees();
%>

<div class="container">
    <form class="col s12" action="/modificarDatosPersonales.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar un dato personal</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="id_datos" name="id_datos" type="text" value="<% out.print(datos_personales.get(0).getId_datos()); %>">
                <label for="id_datos" class="center-align">Id datos</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="nombre" name="nombre" type="text" value="<% out.print(datos_personales.get(0).getNombre()); %>">
                <label for="nombre" class="center-align">Nombre</label>
            </div>
            <div class="col s2">

            </div>
        </div>


        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="A_paterno" name="A_paterno" type="text" value="<% out.print(datos_personales.get(0).getA_paterno()); %>">
                <label for="A_paterno" class="center-align">Apellido paterno</label>
            </div>
            <div class="col s2">

            </div>
        </div>


        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="A_materno" name="A_materno" type="text" value="<% out.print(datos_personales.get(0).getA_paterno()); %>">
                <label for="A_materno" class="center-align">Apellido materno</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="edad" name="edad" type="text" value="<% out.print(datos_personales.get(0).getEdad()); %>">
                <label for="edad" class="center-align">Edad</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="id_tipo" name="id_tipo" type="text" value="<% out.print(datos_personales.get(0).getId_tipo()); %>">
                <label for="id_tipo" class="center-align">Id tipo</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="id_usuario" name="id_usuario" type="text" value="<% out.print(datos_personales.get(0).getId_usuario()); %>">
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
                <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="datospersonales.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>


