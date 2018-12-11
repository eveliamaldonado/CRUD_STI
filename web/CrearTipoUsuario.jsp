
<%@ page import="include.Tipo_Usuario" %>
<%@ page import="controller.controllertipo_usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int id_tipo = 0;
    String nombre_tipo_usuario = request.getParameter("nombre_tipo_usuario");



    try{
        id_tipo = Integer.parseInt(request.getParameter("id_tipo"));

    } catch (NumberFormatException e){

    }

    Tipo_Usuario nuevaTipo_Usuario = new Tipo_Usuario(id_tipo, nombre_tipo_usuario);
    controllertipo_usuario cc = new controllertipo_usuario();
    if (cc.insertartipo_usuario(nuevaTipo_Usuario)) {
        response.sendRedirect("tipousuario.jsp");
    } else {
        response.sendRedirect("a_tipousuario.jsp");
    }


%>
