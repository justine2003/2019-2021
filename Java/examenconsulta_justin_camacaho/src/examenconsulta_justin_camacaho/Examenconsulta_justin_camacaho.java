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
public class Examenconsulta_justin_camacaho {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
    clsCalculo cls = new clsCalculo();
    int ret = 1;
    int menu;
    String centros[] = {};
    int cant;
    int num = 0;
    String medicamentos[] = {"Famotidina","Enalapril","Lovastadina","Metformina","Acetaminofen"};
    String medica = "";
    String cen = "";
    int n = 0;
    int Dosis;
    
        while(ret == 1)
        {            
        cls.menu();
        menu = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese el numero de la opcion deseada"));
        
            if(menu == 1)
            {
            cant = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese el numero de objetos que desea añadir a la lista"));
            
                for (int i = 0; i < cant; i++) 
                {
                String insert = JOptionPane.showInputDialog(null,"Ingrese el nombre del centro medico");
                centros[i] = insert;
                num++;
                }
            }
            
            if(menu == 2)
            {
                for (int i = 0; i < 5; i++)
                {
                medica += " " + medicamentos[i]; 
                }
                JOptionPane.showMessageDialog(null, medica);
            }
            
            if(menu == 3)
            {
                for (int i = 0; i < num ; i++)
                {
                 cen +=" " + centros;  
                }
              JOptionPane.showMessageDialog(null, cen);
            }
            
            if(menu == 4)
            {
            String busqueda = JOptionPane.showInputDialog(null, "Ingrese el nombre de lo que esta buscando");
            
                for (int i = 0; i < num ; i++) 
                {
                String bus = medicamentos[i];
                    if (busqueda == bus)
                    {
                    n = 1;
                    }
                    else
                    {
                    n = 0;
                    }
                }
                if(n == 1)
                {
                JOptionPane.showMessageDialog(null, "Esta en la lista");
                }
                else
                {
                JOptionPane.showMessageDialog(null, "No esta lista");
                }
            }
            
            if (menu == 5)
            {
            cls.Dosis();
            Dosis = Integer.parseInt(JOptionPane.showInputDialog(null,"Ingrese el numero de la opcion deseada"));
            
                if (Dosis == 1)
                {
                String NombreMedi = JOptionPane.showInputDialog(null,"Ingrese el nombre del medicamento");
                String NombrePaci = JOptionPane.showInputDialog(null, "Ingrese el nombre del paciente");
                double EdadPaci = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese la edad del paciente"));
                double PesoPaci = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese el peso del paciente el Kg"));
                double Cantdosis = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese la cantidad de dosis en mg"));
                double CantdosisDia = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese la cantida de dosis que debe tomar al dia"));
                
                cls.calcular(NombreMedi, NombrePaci,EdadPaci,PesoPaci,Cantdosis,CantdosisDia);
                }
            }
            
           if (menu == 6)
           {
           ret = 0;
           }
        }
    }
}
