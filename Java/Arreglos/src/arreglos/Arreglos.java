/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arreglos;



/**
 *
 * @author Usuario
 */
public class Arreglos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
     int[] numeros = new int[3];
     
     numeros[0] = 17;
     numeros[1]= 10;
     numeros[2] = 13;
     
        for (int i=0;i<3; i++)
        {
            System.out.println("Arreglo:" + " " + numeros[i]);
        }
     
    }
    
}
