using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CompararNumeros
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        int Num1, Num2, Num3;

        private void button1_Click(object sender, EventArgs e)
        {
            Num1 = Convert.ToInt32(num1.Text);
            Num2 = Convert.ToInt32(num2.Text);
            Num3 = Convert.ToInt32(num3.Text);


            if (Num1 <= Num2 )
            {
              
            }
        }
    }
}
