using System;
using System.Collections.Generic;

namespace Palindrome.Library
{
    public class PalindromeCheck
    {
        public bool IsPalindrome(string str)
        {
            var strList = new List<char>();
            str = str.ToLower();
            Console.WriteLine(str);
            foreach(char c in str)
            {
                if(c != ' ' && Char.IsLetterOrDigit(c))
                {
                    strList.Add(c);
                }
            }

            int j = strList.Count - 1;

            for(int i=0; i<j; i++)
            {
                if(strList[i] != strList[j])
                {
                    return false;
                }
                j--;
            }
            
            return true;
        }
    }
}
