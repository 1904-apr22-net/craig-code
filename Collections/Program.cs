using System;
using System.Collections;
using System.Collections.Generic;

namespace Collections
{
    class Program
    {
        static void Main(string[] args)
        {
            int[,] twoDMulti = new int[4,5];
            twoDMulti[2, 3] = 5;

            int[] arr = new int[0];

            ArrayList numList = new ArrayList();
            numList.Add(2);
            numList.Add(2);

            var genericIntList = new List<int>();

            var set = new HashSet<string> {"abc", "de", "fg"};

            var number = set.Count;
            Console.WriteLine(set.GetHashCode());

            foreach (var item in set)
            {
                Console.WriteLine(item);
            }

            var numOfTimesSeenWord = new Dictionary<string, int>();
            numOfTimesSeenWord["food"] = 1;
            numOfTimesSeenWord["pc"] = 3;
        }


    }
}
