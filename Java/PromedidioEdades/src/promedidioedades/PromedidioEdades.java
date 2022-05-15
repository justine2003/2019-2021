/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package promedidioedades;

import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class PromedidioEdades {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
     int edades[] = {};
     int numero = 0;
     int print = 0;
     int repit = 1;   
     int acum = 0;
     int a = 0;
     
        while (repit == 1)
        {            
         
        int opcion = Integer.parseInt(JOptionPane.showInputDialog(null, "1.Ingresar edades\n "
              + "2.Ver edades\n "
              + "3.Buscar edad \n "
              + "4.Calcular promedio \n "
              + "5.Salir"));
        
      if (opcion == 1) 
      {
       int num = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese la cantidad de edades que va a añadir a la lista"));
       
          for (int i = 0; i < num; i++) 
          {
             int insert = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese la edad"));
             edades[i] = insert;
             numero++;
          }
      }
     
        if (opcion == 2)
        {   
            for (int i = 0; i < numero; i++) 
            {
             print += edades[i];
            }
            JOptionPane.showMessageDialog(null, "Esta es la lista de edades" + print);
        }
        
        if (opcion == 3)
        {
            int search = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese la edad que esta buscando"));
            
            if (search == print)
            {
             JOptionPane.showMessageDialog(null, "la edad que busca esta en la lista");
            }
            else
            {
             JOptionPane.showMessageDialog(null, "La edad que esta buscando no se encuentra e la lista");
            }
        }
        
        if (opcion == 4)
        {
          acum = acum + print;
            
         if((acum/a) > 18){
            System.out.println("En promedio, los estudiantes son mayores a 18");
        }
        else {
            System.out.println("El promedio de los estudiantes no supera 18");
        }
        }          
          
            if (opcion == 5)
            {
             repit = 0;   
            }
        
        }
    }
}
