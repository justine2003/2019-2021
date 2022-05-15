/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package precion_hidro;

import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class Precion_hidro {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
    double densidad;
    double Altura;
    double gravedad = 9.81;
    double Presion;
    
    densidad = Double.parseDouble(JOptionPane.showInputDialog(null,"Ingrese la densidad objeto"));
    Altura =  Double.parseDouble(JOptionPane.showInputDialog(null,"Ingrese la altura sobre el nivel del mar"));
    
    Presion = densidad * gravedad * Altura;
    
    JOptionPane.showMessageDialog(null, "La Presion es de:" +" "+ Presion);
    }
    
}
