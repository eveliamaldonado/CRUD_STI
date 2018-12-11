
<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.Datos_Cuenta" %>
<%@ page import="controller.controllerdatos_cuenta" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>DatosCuenta</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_datoscuenta.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>ID USUARIO</th>
                    <th>USUARIO</th>
                    <th>PASSWORD</th>


                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controllerdatos_cuenta cc = new controllerdatos_cuenta();
                    int contador = 0;
                    ArrayList<Datos_Cuenta> datos_cuentas = new ArrayList<Datos_Cuenta>();
                    datos_cuentas = cc.obtenerdatos_cuentas();
                    if(datos_cuentas.size() > 0){
                        for(int a=0; a<datos_cuentas.size();a++){
                            htmlcode += "<tr><td>" + datos_cuentas.get(a).getId_usuario()
                                    + "</td><td>" + datos_cuentas.get(a).getUsuario()
                                    + "</td><td>" + datos_cuentas.get(a).getPassword()
                                    + "</td><td>" +
                                    "<a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_datoscuenta.jsp?id_usuario="+datos_cuentas.get(a).getId_usuario()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"delete_datoscuenta( "+ datos_cuentas.get(a).getId_usuario()+ ")\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen datos en la cuenta cuenta</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
