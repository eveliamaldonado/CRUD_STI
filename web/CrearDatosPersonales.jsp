
<%@ page import="include.Datos_Personales" %>
<%@ page import="controller.controllerdatos_personales" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int id_datos = 0;
    String nombre = request.getParameter("nombre");
    String A_paterno = request.getParameter("A_paterno");
    String A_materno = request.getParameter("A_materno");
    int edad = 0;
    int id_tipo = 0;
    int id_usuario = 0;


    try{
        id_datos = Integer.parseInt(request.getParameter("id_datos"));
        edad = Integer.parseInt(request.getParameter("edad"));
        id_tipo = Integer.parseInt(request.getParameter("id_tipo"));
        id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
    } catch (NumberFormatException e){

    }

    Datos_Personales nuevaDatos_Personales = new Datos_Personales(id_datos, nombre, A_paterno, A_materno, edad, id_tipo, id_usuario);
    controllerdatos_personales cc = new controllerdatos_personales();
    if(cc.agregardatos_personales(nuevaDatos_Personales)){
        response.sendRedirect("datospersonales.jsp");
    } else {
        response.sendRedirect("a_datospersonales.jsp");
    }


%>


