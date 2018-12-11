<%@ page import="include.Tipo_Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="controller.controllertipo_usuario" %>

<%
    int id_tipo = 0;
    try {
        id_tipo = Integer.parseInt(request.getParameter("id_tipo"));

    } catch (NumberFormatException e){

    }
    String nombre_tipo_usuario = request.getParameter("nombre_tipo_usuario");





    Tipo_Usuario nuevaTipo_Usuario = new Tipo_Usuario(id_tipo, nombre_tipo_usuario);

    controllertipo_usuario cc = new controllertipo_usuario();
    if(cc.actualizartipo_usuario(nuevaTipo_Usuario)) {
        response.sendRedirect("tipousuario.jsp");
    } else {
        response.sendRedirect("m_tipousuario.jsp?id_tipo=" + id_tipo);
    }
%>
