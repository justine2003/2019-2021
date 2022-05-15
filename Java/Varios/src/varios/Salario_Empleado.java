/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package varios;

import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class Salario_Empleado 
{
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
    double salario;
   double tiempoR; 
   double total;
   double dinH;
   double rebajo;
   
   salario = Double.parseDouble(JOptionPane.showInputDialog(null,"Ingrese su salario"));
   
   tiempoR = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese el tiempo que se le reduce por el coronavirus en hora"));
   
   rebajo = salario * tiempoR;
   
   total = salario - rebajo;
   
   JOptionPane.showMessageDialog(null,"Su salario total es de" + " " + total );
   
    }
}
