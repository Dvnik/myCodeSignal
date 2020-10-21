/*

Given the string, check if it is a palindrome.
--------------------------------------------------------------------------------------
名詞解釋：Palindrome(回文)
A string that doesn't changed when reversed (it reads the same backward and forward).

Examples:
"eye" is a palindrome
"noon" is a palindrome
"decaf faced" is a palindrome
"taco cat" is not a palindrome (backwards it spells "tac ocat")
"racecars" is not a palindrome (backwards it spells "sracecar")
--------------------------------------------------------------------------------------


Example:

For inputString = "aabaa", the output should be checkPalindrome(inputString) = true;
For inputString = "abac", the output should be checkPalindrome(inputString) = false;
For inputString = "a", the output should be checkPalindrome(inputString) = true.


判斷一個字串是不是“回文”(即文字對稱，例如：山口山)
*/

func checkPalindrome(inputString: String) -> Bool
{
     let reversedStr:String = String(inputString.reversed())
     return reversedStr == inputString
}
