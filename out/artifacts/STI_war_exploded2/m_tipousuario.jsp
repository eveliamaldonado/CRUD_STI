
<%@ page import="controller.controllertipo_usuario" %>
<%@ page import="include.Tipo_Usuario" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%
    int id_tipo = 0;
    controllertipo_usuario cc = new controllertipo_usuario();
    ArrayList<Tipo_Usuario> tipo_usuarios = new ArrayList<Tipo_Usuario>();
    tipo_usuarios = cc.obtenertipo_usuarios();
%>

<div class="container">
    <form class="col s12" action="/modificarTipoUsuario.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar el tipo de usuario</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="id_tipo" name="id_tipo" type="text" value="<% out.print(tipo_usuarios.get(0).getId_tipo()); %>">
                <label for="id_tipo" class="center-align">Id usuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="nombre_tipo_usuario" name="nombre_tipo_usuario" type="text" value="<% out.print(tipo_usuarios.get(0).getNombre_tipo_usuario()); %>">
                <label for="nombre_tipo_usuario" class="center-align">Usuario</label>
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
                <a class="btn col s6" href="tipousuario.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>

