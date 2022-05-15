/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkgreturn.of.investment;

import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class ReturnOfInvestment {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
      Double calcular;
     int Condicion;
     double Invercion;
     double ROI;
     
     calcular = Double.parseDouble(JOptionPane.showInputDialog(null,"Ingrese la ganancia"));
     Invercion = Double.parseDouble(JOptionPane.showInputDialog(null,"Ingrese la invercion"));
     ROI = calcular - Invercion / Invercion;
     
        if (Invercion > calcular)
        {
        JOptionPane.showMessageDialog(null,"A ganado" + ROI);
        }
        if (Invercion <= calcular)
        {
        JOptionPane.showMessageDialog(null,"A perdido" + ROI);
        }
    }
    
}
