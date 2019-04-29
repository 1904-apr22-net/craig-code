using System;
using System.Collections.Generic;

namespace Palindrome.Library
{
    public class PalindromeChecker
    {
        public bool IsPalindrome(string str)
        {
            // creating a list to store str with only lowercase alphanumeric chars
            var strList = new List<char>();
            str = str.ToLower();
            foreach(char c in str)
            {
                if(c != ' ' && Char.IsLetterOrDigit(c))
                {
                    strList.Add(c);
                }
            }

            // initialize iterator to start from the back of strList
            int j = strList.Count - 1;

            // Compare chars from opposite ends of strList and return false if not equal
            for(int i=0; i<j; i++)
            {
                if(strList[i] != strList[j])
                {
                    return false;
                }
                j--;
            }
            
            // strList is a palindrome
            return true;
        }
    }
}
