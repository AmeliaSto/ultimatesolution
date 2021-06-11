using System;

namespace MyUltimateSolution
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Today is Friday!");
            Random random = new Random();
            for (int i = 0; i < 10; i++)
            {
                System.Threading.Thread.Sleep(1000);
                Console.WriteLine(random.Next(100,999));
            }
        }
    }
}
