/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package examenconsulta_justin_camacaho;

import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class clsCalculo 
{
public void menu()
 {
   JOptionPane.showMessageDialog(null,"1.Agregar centros médicos\n"
                                    + "2.Ver medicamentos\n"
                                    + "3.Ver cantros medicos\n"
                                    + "4.Buscar medicamentosz\n"
                                    + "5.Calcular dosis\n"
                                    + "6.Salir");     
}

public void Dosis()
{
JOptionPane.showMessageDialog(null, "1.Ingresar datos\n"
                                    + "2.Regresar");
}

public void calcular(String NombreMedi, String NombrePaci, double EdadPaci, double PesoPaci, double Cantdosis, double CantdosisDia)
{
double Dosis;
Dosis = CantdosisDia * PesoPaci / Cantdosis;

JOptionPane.showMessageDialog(null, "Mi salud\n"
                                    + "Nombre del paciente"+ " " + NombrePaci
                                    + "\nEdad" + "  " +EdadPaci
                                    + "\nPeso Kg" + " " + PesoPaci
                                    + "\n------------------"
                                    + "\nMg Requeridos" + " " + Cantdosis
                                    + "\nCantidad al dia" + " " + CantdosisDia
                                    + "\n-------------------------------"
                                    + "\nDosis" + " " + Dosis );
}

}
