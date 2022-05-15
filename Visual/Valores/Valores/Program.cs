using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Valores
{
    class Program
    {
        static void Main(string[] args)
        {
            int cantNumeros, num, promedios;
            int acum = 0;

            Console.WriteLine("Ingrese la cantidad de numeros que debe ingresar");
            cantNumeros = int.Parse(Console.ReadLine());

            for (int i = 0; i < cantNumeros; i++ )
            {
                Console.WriteLine("Ingrese un valor numerico" + (i+1));
                num = int.Parse(Console.ReadLine());
                acum = acum + num;
                
            }
            promedios = acum / cantNumeros;
            Console.WriteLine("Promedio" + promedios);
        }
    }
}
