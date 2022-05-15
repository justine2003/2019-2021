/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejrcicioarreglos;

import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class ejercicioArreglo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
     int ciclo =  1;
     int opcion;
     int num = 0;
     String[] flores = {"Rosa","Girasol","Tulipanes","Claveles","Lirio"};
     String[] prove ={};
     
        while (ciclo == 1) 
        {            
        opcion = Integer.parseInt(JOptionPane.showInputDialog(null,"1.Ver flores \n "
                                                            + "2.Ingresar proveedores \n "
                                                            + "3.Ver Probedores \n"
                                                            + " 4.Pedido \n"
                                                            + " 5.Salir"));
        
        if (opcion == 1)
        {
        String Flores = ":";
   
        for (int i = 0; i < 5 ; i++)
        {
         Flores +="  " + flores[i];
        }
        JOptionPane.showMessageDialog(null, "Esta es su lista de flores:" + " " + Flores);
        }
      
        
        if (opcion == 2)
        {
         int cant = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese la cantidad de datos que va ingresar"));
        for (int i = 0; i < cant; i++)
        {
         String insert = JOptionPane.showInputDialog(null,"");
         prove[i] = insert;
         num++;
        }
        }
        
       if (opcion == 3 ) 
       {
             String Provedores = "";
           
           for (int i = 0; i < num; i++) 
           {
           Provedores += " " + prove[i];
           }
           JOptionPane.showMessageDialog(null, "Esta es su lista" + Provedores);
       }
        
      if(opcion == 4) 
      {
       String flor = JOptionPane.showInputDialog(null, "Ingrese el nombre de la flor que busca");
       
          if (flor == flores[1])
          {
             JOptionPane.showMessageDialog(null, "La flor esta en la lista");
          }
          else
          {
           JOptionPane.showMessageDialog(null, "La flor que busca no esta");
          }
       
      }
      
            if (opcion == 5)
            {
             ciclo = 0;
            }
       
     }
  }
}