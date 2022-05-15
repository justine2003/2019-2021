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
public class Colllar 
{
 /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        int Oro = 1500;
        int Plata = 5000;
        int Tamaño;
        int R;
        double TotalR;
        int TotalB;
        int N = 6;
        double P;
        double A;
        double L;
        
        Tamaño = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese el tamaño del collar"));
        
        TotalB = Tamaño * Plata;
        
        R = Tamaño/2;
           
        A = R/1 * 0.8660254038;
        
        L = 35/1 * 0.5; 
        
        P = 6 * L;
        
        TotalR = P * A; 
        
        JOptionPane.showMessageDialog(null, "EL costo de poner el borde es de:"+ " " + TotalB);
        JOptionPane.showMessageDialog(null, "El costo de llenar el centro es de:" + " " + TotalR);
        
    }    
}
