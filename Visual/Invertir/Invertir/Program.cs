using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Invertir
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("hola mundo");
            Console.WriteLine("Digite un numero o palabra");
            string numero = Console.ReadLine();
            Console.WriteLine(invertirManualmente(numero));
            Console.ReadLine();
        }

        public static string invertirManualmente(string cadena)
        {
            string cadenaInvertida = "";

            foreach (char letra in cadena)
            {
                cadenaInvertida = letra + cadenaInvertida;

            }
            return cadenaInvertida;
        }

    }
}
