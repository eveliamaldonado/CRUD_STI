
<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.Datos_Personales" %>
<%@ page import="controller.controllerdatos_personales" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>DatosPersonales</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_datospersonales.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>ID DATOS</th>
                    <th>NOMBRE</th>
                    <th>A_PATERNO</th>
                    <th>A_MATERNO</th>
                    <th>EDAD</th>
                    <th>ID TIPO</th>
                    <th>ID USUARIO</th>

                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controllerdatos_personales cc = new controllerdatos_personales();
                    int contador = 0;
                    ArrayList<Datos_Personales> datos_personalees = new ArrayList<Datos_Personales>();
                    datos_personalees = cc.obtenerdatos_personalees();
                    if(datos_personalees.size() > 0){
                        for(int a=0; a<datos_personalees.size();a++){
                            htmlcode += "<tr><td>" + datos_personalees.get(a).getId_datos()
                                    + "</td><td>" + datos_personalees.get(a).getNombre()
                                    + "</td><td>" + datos_personalees.get(a).getA_paterno()
                                    + "</td><td>" + datos_personalees.get(a).getA_materno()
                                    + "</td><td>" + datos_personalees.get(a).getEdad()
                                    + "</td><td>" + datos_personalees.get(a).getId_tipo()
                                    + "</td><td>" + datos_personalees.get(a).getId_usuario()
                                    + "<td><a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"#\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" href=\"#\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen datos personales</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
