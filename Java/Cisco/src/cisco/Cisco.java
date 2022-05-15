/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package cisco;

import java.util.Scanner;
import javax.swing.JOptionPane;

/**
 *
 * @author justin
 */
public class Cisco 
{
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    { 
        int carga = 0;
        int num1;
        int num2;
        int opcion;
        int result = 0;
        int re = 0;
        
        System.out.print("Inicio de aplicacion" + "\n");
       
        for (int i = 0; i < 10; i++) 
        {
        System.out.print(carga + "%" + "\n");
         carga++;    
        }
        
        JOptionPane.showMessageDialog(null,"Aplicacion Iniciada");        
        
        while (re == 0)
        {                    
       num1 = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese el primer numero"));
       num2 = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese el segundo numer"));
       
       opcion = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese una opcion \n 1.Suma \n 2.resta \n 3.Multiplicacion \n 4.Divicion"));
       
        while (opcion == 1)
        {            
        result = num1 + num2;
         JOptionPane.showMessageDialog(null,"El resultado es " + result);
         opcion = 0;
        }
        
         while (opcion == 2)
        {            
         result = num1 - num2;
          JOptionPane.showMessageDialog(null,"El resultado es " + result);
          opcion = 0;
        }
         
          while (opcion == 3)
        {            
          result = num1 * num2; 
           JOptionPane.showMessageDialog(null,"El resultado es " + result);
           opcion = 0;
        }
          
          while (opcion == 4)
        {            
          result = num1 / num2;
           JOptionPane.showMessageDialog(null,"El resultado es " + result);
           opcion = 0;
        }

        re = Integer.parseInt(JOptionPane.showInputDialog(null,"0.Continuar \n 1.Salir"));             
        }
        
        JOptionPane.showMessageDialog(null,"Gracias por si tiempo");
    }   
}
