using System;

namespace Calc.Library
{
    public class Calculator
    {
        
        public void Calculate(int n)
        {
            for(int i=n; i>0; i--)
            {
                if(i%3 == 0)
                {
                    Console.WriteLine(i);
                }
            }
        }
    }
}