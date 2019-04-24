using System;
using Calc.Library;

namespace Calc.UI
{
    class Program
    {
        static void Main(string[] args)
        {
            int n;
            Calculator calc = new Calculator();
            Console.WriteLine("Enter a number");

            n = int.Parse(Console.ReadLine());

            calc.Calculate(n);
        }
    }
}
