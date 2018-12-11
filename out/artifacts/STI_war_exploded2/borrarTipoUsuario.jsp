
<%@ page import="controller.controllertipo_usuario" %>
<%
    int id_tipo = 0;
    try{
        id_tipo = Integer.parseInt(request.getParameter("id_tipo"));
    } catch(NumberFormatException ex){

    }

    controllertipo_usuario cc = new controllertipo_usuario();
    if(cc.eliminartipo_usuario(id_tipo)){
        response.sendRedirect("tipousuario.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
