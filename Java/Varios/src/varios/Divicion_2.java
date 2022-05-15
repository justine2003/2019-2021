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
public class Divicion_2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
     int Num;
     double Result;
     int option = 0;
     
        while(option == 0) 
        {
        Num = Integer.parseInt(JOptionPane.showInputDialog("Ingrese un numero"));
    
            if (Num % 2 == 0)
            {
              Result = Num % 2; 
              JOptionPane.showMessageDialog(null,"El numero que ingreso es divisible entre 2");
            }
            else
            {
             JOptionPane.showInternalMessageDialog(null, "El numero que inserto no es divicible entre 2");
            }   
        option =  JOptionPane.showConfirmDialog(null, "Desea continuar");
        }
    
    }
    
}
