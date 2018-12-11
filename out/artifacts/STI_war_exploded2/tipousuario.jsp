<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.Tipo_Usuario" %>
<%@ page import="controller.controllertipo_usuario" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>TipoUsuario</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_tipousuario.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>ID TIPO</th>
                    <th>NOMBRE DEL TIPO DE USUARIO</th>


                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controllertipo_usuario cc = new controllertipo_usuario();
                    int contador = 0;
                    ArrayList<Tipo_Usuario> tipo_usuarios = new ArrayList<Tipo_Usuario>();
                    tipo_usuarios = cc.obtenertipo_usuarios();
                    if(tipo_usuarios.size() > 0){
                        for(int a=0; a<tipo_usuarios.size();a++){
                            htmlcode += "<tr><td>" + tipo_usuarios.get(a).getId_tipo()
                                    + "</td><td>" + tipo_usuarios.get(a).getNombre_tipo_usuario()
                                    + "</td><td>" +
                                    "<a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_tipousuario.jsp?id_tipo="+tipo_usuarios.get(a).getId_tipo()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"delete_tipousuario( "+ tipo_usuarios.get(a).getId_tipo()+ ")\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen tipos de usuarios</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
