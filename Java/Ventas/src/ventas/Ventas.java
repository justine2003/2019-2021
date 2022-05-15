/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ventas;

import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class Ventas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
       int InventarioInicial = 4000;
       int CompraNeta = 11000;
       int IventarioFinal = 5500;
       int ventas;
       int CostMercaderia;
       int MercaderiaVendida;
       int MargenGanacias;
       int MargenBruto;
       
       CostMercaderia = InventarioInicial + CompraNeta + InventarioInicial;
       
       ventas = Integer.parseInt(JOptionPane.showInputDialog("Ventas","Ingrese las ventas"));
       
       MargenGanacias = ventas - CostMercaderia;
       
       MargenBruto = MargenGanacias/ventas*100;
       
       JOptionPane.showMessageDialog(null,"su costo de mercaderia es:" + " " + CostMercaderia );
       JOptionPane.showMessageDialog(null,"su margen de ganancia es:" + " " + MargenGanacias);
       JOptionPane.showMessageDialog(null, "su margen bruto es:" +" " +  MargenBruto);
              
    }
    
}
