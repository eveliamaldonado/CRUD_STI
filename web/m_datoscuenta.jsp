
<%@ page import="controller.controllerdatos_cuenta" %>
<%@ page import="include.Datos_Cuenta" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%
    int id_datos = 0;
    controllerdatos_cuenta cc = new controllerdatos_cuenta();
    ArrayList<Datos_Cuenta> datos_cuentas = new ArrayList<Datos_Cuenta>();
    datos_cuentas = cc.obtenerdatos_cuentas();
%>

<div class="container">
    <form class="col s12" action="/modificarDatosCuenta.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar datos cuenta</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="id_usuario" name="id_usuario" type="text" value="<% out.print(datos_cuentas.get(0).getId_usuario()); %>">
                <label for="id_usuario" class="center-align">Id usuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="usuario" name="usuario" type="text" value="<% out.print(datos_cuentas.get(0).getUsuario()); %>">
                <label for="usuario" class="center-align">Usuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="password" name="password" type="text" value="<% out.print(datos_cuentas.get(0).getPassword()); %>">
                <label for="password" class="center-align">Password</label>
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
                <a class="btn col s6" href="datoscuenta.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
