/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package appprimer;

import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author Usuario
 */
public class AppPrimer {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
    String nombre;
    int numero;
    
   numero = Integer.parseInt(JOptionPane.showInputDialog("Numero","Ingrese un numero"));
    
   JOptionPane.showConfirmDialog(null,"Su edad es:" + " " + numero);
    
    }
    
}
