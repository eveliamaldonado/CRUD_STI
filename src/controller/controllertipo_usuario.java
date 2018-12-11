package controller;
import include.Tipo_Usuario;
import model.modelotipo_usuario;
import java.util.ArrayList;


public class controllertipo_usuario {
    public boolean insertartipo_usuario(Tipo_Usuario tipo_usuario) {
        modelotipo_usuario tipo_usuario1 = new modelotipo_usuario();
        return tipo_usuario1.insertartipo_usuario(tipo_usuario);

    }
    public ArrayList<Tipo_Usuario> obtenertipo_usuarios() {
        modelotipo_usuario tipo_usuarios = new modelotipo_usuario();
        return tipo_usuarios.obtenertipo_usuarios();
    }

    public ArrayList<Tipo_Usuario> obtenertipo_usuario(int id_tipo){
        modelotipo_usuario tipo_usuario = new modelotipo_usuario();
        return tipo_usuario.obtenertipo_usuario(id_tipo);
    }
    public boolean actualizartipo_usuario(Tipo_Usuario tipo_usuario){
        modelotipo_usuario tipo_usuario1 = new modelotipo_usuario();
        return tipo_usuario1.actualizartipo_usuario(tipo_usuario);
    }

    public boolean eliminartipo_usuario(int id_tipo){
        modelotipo_usuario tipo_usuario1 = new modelotipo_usuario();
        return tipo_usuario1.borrartipo_usuario(id_tipo);
    }

/*
    public static void main(String[] args) {
        controllertipo_usuario cc = new controllertipo_usuario();
       //System.out.println(cc.insertartipo_usuario(new Tipo_Usuario(4,"jefe")));

        //Listar todos los elementos de la tabla
        ArrayList<Tipo_Usuario> tipo_usuario = new ArrayList<Tipo_Usuario>();
        tipo_usuario = cc.obtenertipo_usuarios();
        for (int a=0;a<tipo_usuario.size();a++){
            System.out.println("id_tipo: " + tipo_usuario.get(a).getId_tipo());
            System.out.println("nombre_tipo_usuario: " + tipo_usuario.get(a).getNombre_tipo_usuario());
            System.out.println();
        }

        // Listar un elemento de la tabla por su llave primaria
        //ArrayList<Tipo_Usuario> tipo_usuarios = new ArrayList<Tipo_Usuario>();
        //tipo_usuario = cc.obtenertipo_usuario(1);
       // for (int b=0;b<tipo_usuario.size();b++){
           // System.out.println("id_tipo: " + tipo_usuario.get(b).getId_tipo());
            //System.out.println("nombre_tipo_usuario: " + tipo_usuario.get(b).getNombre_tipo_usuario());
            //System.out.println();
        //}

        // Modificar un elemento
       System.out.println(cc.actualizartipo_usuario(new Tipo_Usuario(4,"Profesora")));

        //Borrar un elemento
        //System.out.println(cc.eliminartipo_usuario(2));


    }
*/

}

