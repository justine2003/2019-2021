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
public class Clacificasion
{
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
     int Camaron;
     int opcion = 0;
     
        while (opcion == 0) 
        {
          Camaron = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese el numero de camarones por libra"));
     
        if (Camaron > 55)
        {
           JOptionPane.showMessageDialog(null, "Su camaron es Extra chico");
           JOptionPane.showMessageDialog(null, "Esta proivido su casa");
        }
        if (Camaron >= 39 && Camaron <= 55)
        {    
         JOptionPane.showMessageDialog(null, "Su camaron es Chico");
         JOptionPane.showMessageDialog(null, "Esta proivido su casa");
        }
        if (Camaron >= 19 && Camaron <= 38)
        {
          JOptionPane.showMessageDialog(null, "Su camaron es Mediano");
           JOptionPane.showMessageDialog(null, "Esta permitido su casa");
        }
        if (Camaron >=1 && Camaron <= 18)
        {
          JOptionPane.showMessageDialog(null, "Su camaron es Jumbo");
           JOptionPane.showMessageDialog(null, "Esta permitido su casa");
        } 
        opcion = JOptionPane.showConfirmDialog(null, "Desea continuar");
        }
    }
}
