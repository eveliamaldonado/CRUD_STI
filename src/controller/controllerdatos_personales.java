package controller;
import include.Datos_Personales;
import model.modelodatos_personales;
import java.util.ArrayList;

public class controllerdatos_personales {
    public boolean agregardatos_personales(Datos_Personales datos_personales) {
        modelodatos_personales datos_personales1 = new modelodatos_personales();
        return datos_personales1.insertardatos_personales(datos_personales);
    }

    public ArrayList<Datos_Personales> obtenerdatos_personalees() {
        modelodatos_personales datos_personalees = new modelodatos_personales();
        return datos_personalees.obtenerdatos_personalees();
    }


    public ArrayList<Datos_Personales> obtenerdatos_personales (int id_datos) {
        modelodatos_personales datos_personales = new modelodatos_personales();
        return datos_personales.obtenerdatos_personales(id_datos);
    }

    public boolean actualizardatos_personales(Datos_Personales datos_personales) {
        modelodatos_personales datos_personales1 = new modelodatos_personales();
        return datos_personales1.actualizardatos_personales(datos_personales);
    }

    public boolean eliminardatos_personales(int id_datos) {
        modelodatos_personales datos_personales1 = new modelodatos_personales();
        return datos_personales1.borrardatos_personales(id_datos);
    }

    public static void main(String[] args) {
        controllerdatos_personales cc = new controllerdatos_personales();
        //System.out.println(cc.agregardatos_personales(new Datos_Personales(4,"Alex","Aguirre","Campos",23,4,4) ));

        // Listar todos los elementos de la tabla
        ArrayList<Datos_Personales> datos_personalees = new ArrayList<Datos_Personales>();
        datos_personalees = cc.obtenerdatos_personalees();
        for (int a = 0; a < datos_personalees.size(); a++) {
            System.out.println("id_datos: " + datos_personalees.get(a).getId_datos());
            System.out.println("nombre: " + datos_personalees.get(a).getNombre());
            System.out.println("a_paterno: " + datos_personalees.get(a).getA_paterno());
            System.out.println("a_materno " + datos_personalees.get(a).getA_materno());
            System.out.println("edad: " + datos_personalees.get(a).getEdad());
            System.out.println("id_tipo: " + datos_personalees.get(a).getId_tipo());
            System.out.println("id_usuario: " + datos_personalees.get(a).getId_usuario());
        }

        // Listar un elemento de la tabla por su llave primaria
        ArrayList<Datos_Personales> datos_personales = new ArrayList<Datos_Personales>();
        datos_personales = cc.obtenerdatos_personalees();
        for (int b = 0; b < datos_personales.size(); b++) {
            System.out.println("id_datos: " + datos_personales.get(b).getId_datos());
            System.out.println("nombre: " + datos_personales.get(b).getNombre());
            System.out.println("a_paterno: " + datos_personales.get(b).getA_paterno());
            System.out.println("a_materno " + datos_personales.get(b).getA_materno());
            System.out.println("edad: " + datos_personales.get(b).getEdad());
            System.out.println("id_tipo: " + datos_personales.get(b).getId_tipo());
            System.out.println("id_usuario: " + datos_personales.get(b).getId_usuario());


            // Modificar un elemento

            //System.out.println(cc.actualizardatos_personales(new Datos_Personales(1, "Evelia", "Maldonado", "Miranda", 21, 1,  1)));

            //borrar un elemento
           // System.out.println(cc.eliminardatos_personales(4));
        }
    }
}