package pooprueba;
/**
 *
 * @author Usuario
 */
public class PooPrueba 
{
String color;
String marca;
int KM;

    public static void main(String[] args)
    {
    PooPrueba poo = new PooPrueba();
    
    poo.color = "Blanco";
    poo.marca ="Audi";
    poo.KM = 0;
    
        System.out.println("El color del coche es:" + poo.color);
        System.out.println("La marca del coshe es:" + poo.marca);
        System.out.print("El kilometraje del coche es:" + poo.KM);
    }

}
