package controller;
import include.Datos_Cuenta;
import model.modelodatos_cuenta;
import java.util.ArrayList;

public class controllerdatos_cuenta {
    public boolean agregardatos_cuenta(Datos_Cuenta datos_cuenta) {
        modelodatos_cuenta datos_cuenta1 = new modelodatos_cuenta();
        return datos_cuenta1.insertardatos_cuenta(datos_cuenta);
    }

    public ArrayList<Datos_Cuenta> obtenerdatos_cuentas() {
        modelodatos_cuenta datos_cuentas = new modelodatos_cuenta();
        return datos_cuentas.obtenerdatos_cuentas();
    }

    public ArrayList<Datos_Cuenta> obtenerdatos_cuenta(int id_usuario) {
        modelodatos_cuenta datos_cuenta = new modelodatos_cuenta();
        return datos_cuenta.obtenerdatos_cuenta(id_usuario);
    }

    public boolean actualizardatos_cuenta(Datos_Cuenta datos_cuenta) {
        modelodatos_cuenta datos_cuenta1 = new modelodatos_cuenta();
        return datos_cuenta1.actualizardatos_cuenta(datos_cuenta);
    }

    public boolean eliminardatos_cuenta(int id_usuario) {
        modelodatos_cuenta datos_cuenta1 = new modelodatos_cuenta();
        return datos_cuenta1.borrardatos_cuenta(id_usuario);
    }

    public static void main(String[] args) {

        controllerdatos_cuenta cc = new controllerdatos_cuenta();
        //System.out.println(cc.agregardatos_cuenta(new Datos_Cuenta(4,"Alex","msbgdlk7656")));

      /*  //Listar todos los elementos de la tabla
        ArrayList<Datos_Cuenta> datos_cuentas = new ArrayList<Datos_Cuenta>();
        datos_cuentas = cc.obtenerdatos_cuentas();
        for (int a = 0; a < datos_cuentas.size(); a++) {
            System.out.println("id_usuario: " + datos_cuentas.get(a).getId_usuario());
            System.out.println("usuario: " + datos_cuentas.get(a).getUsuario());
            System.out.println("password: " + datos_cuentas.get(a).getPassword());
            System.out.println();

        }

        //Listar un elemento de la tabla por su llave primaria
        ArrayList<Datos_Cuenta> datos_cuenta = new ArrayList<Datos_Cuenta>();
        datos_cuenta = cc.obtenerdatos_cuentas();
        for (int b = 0; b < datos_cuenta.size(); b++) {
            System.out.println("id_usuario: " + datos_cuenta.get(b).getId_usuario());
            System.out.println("usuario: " + datos_cuenta.get(b).getUsuario());
            System.out.println("password: " + datos_cuenta.get(b).getPassword());
            System.out.println();
        }
*/
        //Modificar un elemento
        System.out.println(cc.actualizardatos_cuenta(new Datos_Cuenta(4,"Samuelito","hbgd3i7")));

        //Eliminar un elemento
        // System.out.println(cc.eliminardatos_cuenta(4));

    }
}



