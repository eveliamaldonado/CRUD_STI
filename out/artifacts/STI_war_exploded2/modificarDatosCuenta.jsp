<%@ page import="include.Datos_Cuenta" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="controller.controllerdatos_cuenta" %>

<%
    int id_usuario = 0;
    String usuario = request.getParameter("usuario");
    String password = request.getParameter("password");

    try {
        id_usuario = Integer.parseInt(request.getParameter("id_usuario"));

    } catch (NumberFormatException e){

    }


    Datos_Cuenta nuevaDatos_Cuenta = new Datos_Cuenta(id_usuario, usuario, password);

    controllerdatos_cuenta cc = new controllerdatos_cuenta();
    if(cc.actualizardatos_cuenta(nuevaDatos_Cuenta)) {
        response.sendRedirect("datoscuenta.jsp");
    } else {
        response.sendRedirect("m_datoscuenta.jsp?id_usuario=" + id_usuario);
    }
%>
