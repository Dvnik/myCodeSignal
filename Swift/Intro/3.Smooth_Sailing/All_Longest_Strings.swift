/*
Given an array of strings, return another array containing all of its longest strings.

Example

For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be allLongestStrings(inputArray) = ["aba", "vcd", "aba"].

輸入一個字串陣列，吐出陣列中最長的字。

解法較為暴力，先是跑回圈確定最長的字，再跑另一個獨立迴圈將最長的字加進去
*/

func allLongestStrings(inputArray: [String]) -> [String]
{
    var result:[String] = [String]()
    var maxCount:Int = 0
    for inputStr in inputArray
    {
        if inputStr.count > maxCount
        {
            maxCount = inputStr.count
        }
    }

    for inputStr in inputArray
    {
        if inputStr.count == maxCount
        {
            result.append(inputStr)
        }
    }
    return result

}
