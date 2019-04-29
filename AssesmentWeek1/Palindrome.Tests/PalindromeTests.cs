using System;
using Xunit;
using Palindrome.Library;

namespace Palindrome.Tests
{
    public class PalindromeTests
    {
        [Fact]
        public void CheckIsPalindromeTrue1()
        {
            var a = new PalindromeCheck();

            Assert.True(a.IsPalindrome("nurses run"));
        }

        [Fact]
        public void CheckIsPalindromeTrue2()
        {
            var a = new PalindromeCheck();

            Assert.True(a.IsPalindrome("never odd, or even"));
        }

        [Fact]
        public void CheckIsPalindromeTrue3()
        {
            var a = new PalindromeCheck();

            Assert.True(a.IsPalindrome("racecaR"));
        }

        [Fact]
        public void CheckIsPalindromeTrue4()
        {
            var a = new PalindromeCheck();

            Assert.True(a.IsPalindrome("1221"));
        }

        [Fact]
        public void CheckIsPalindromeFalse1()
        {
            var a = new PalindromeCheck();

            Assert.False(a.IsPalindrome("one to one"));
        }

        [Fact]
        public void CheckIsPalindromeFalse2()
        {
            var a = new PalindromeCheck();

            Assert.False(a.IsPalindrome("123abccba123"));
        }

        [Fact]
        public void CheckIsPalindromeFalse3()
        {
            var a = new PalindromeCheck();

            Assert.False(a.IsPalindrome("This probably isnt a palindrome"));
        }

        [Fact]
        public void CheckIsPalindromeFalse4()
        {
            var a = new PalindromeCheck();

            Assert.False(a.IsPalindrome("asdf[]fd[as"));
        }
    }
}
