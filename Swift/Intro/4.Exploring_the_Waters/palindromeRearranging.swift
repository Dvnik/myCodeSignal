/*
Given a string, find out if its characters can be rearranged to form a palindrome.

=======PALINDROME====================
A string that doesn't changed when reversed (it reads the same backward and forward).

Examples:

"eye" is a palindrome
"noon" is a palindrome
"decaf faced" is a palindrome
"taco cat" is not a palindrome (backwards it spells "tac ocat")
"racecars" is not a palindrome (backwards it spells "sracecar")
=====================================

Example

For inputString = "aabb", the output should be palindromeRearranging(inputString) = true.

We can rearrange "aabb" to make "abba", which is a palindrome.

參考完別人的作答才知道，題目問的要求是「檢查字串中的字母是可以重組成回文」並回傳
還特地查了一下計算每個文字的出現數目是怎麼用的

*/
func palindromeRearranging(inputString: String) -> Bool
{
    //use reduce to make key-value for count words in strings
    let counts = inputString.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    // counter can't % be 0 words
    var counter = 0
    for k in counts
    {
        if k.value % 2 == 1
        {
            counter+=1
        }
    }
    // give a result
    if counter > 1 {
        return false
    }
    if inputString.count % 2 == 1 && counter == 0
    {
        return false
    }
    return true
}
