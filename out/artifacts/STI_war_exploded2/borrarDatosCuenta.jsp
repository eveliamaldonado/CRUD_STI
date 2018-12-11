
<%@ page import="controller.controllerdatos_cuenta" %>
<%
    int id_usuario = 0;
    try{
        id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
    } catch(NumberFormatException ex){

    }

    controllerdatos_cuenta cc = new controllerdatos_cuenta();
    if(cc.eliminardatos_cuenta(id_usuario)){
        response.sendRedirect("datoscuenta.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
