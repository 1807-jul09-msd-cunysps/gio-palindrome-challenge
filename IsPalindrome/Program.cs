using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq;

namespace IsPalindrome
{
    class MyClass
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Check if Palindrome");
            string str = Console.ReadLine(); //read users input
            str = str.Replace(" ", String.Empty); //removes spaces in between words
            str = str.ToLower(); //puts everything in str to lower case
           //Console.WriteLine(str); //checks what str contains

            string palindrome = new string(str.Reverse().ToArray()); //creates new str and reverse str and put it into array
            //Console.WriteLine(palindrome); //checks what palindrome contains
            //Console.WriteLine(str); //checks what str contains
            if (str == palindrome) //compares user 
            {
                Console.WriteLine("True");
            }
            else
            {
                Console.WriteLine("False");
            }
            Console.ReadLine();
        }
    }
}
