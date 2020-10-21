/*
Given two strings, find the number of common characters between them.

Example

For s1 = "aabcc" and s2 = "adcaa", the output should be commonCharacterCount(s1, s2) = 3.

Strings have 3 common characters - 2 "a"s and 1 "c".

就簡單的計算兩組字串中相同的文字

不過我為了查清楚swift對字串的操作，花了不少時間
此種操作也是比較直覺式的解法，
因為只要刪掉其中一組字串的文字，所以只有一個var。

如果要指定字串中的特定元素，需要用上特定元素，需要用上.index方法。
因為swift的String無法直接將字串當成陣列指定字元位置，要透過String.index方法執行。
所以都先取了String.index的位置後，再做後續的判斷動作。
*/

func commonCharacterCount(s1: String, s2: String) -> Int
{
    let strArray1 = s1
    var strArray2 = s2
    var count: Int = 0

    for item1 in 0..<strArray1.count
    {
        let index1 = strArray1.index(strArray1.startIndex, offsetBy: item1)
        for item2 in 0..<strArray2.count
        {
           let index2 = strArray2.index(strArray2.startIndex, offsetBy: item2)
           if strArray1[index1] == strArray2[index2]
           {
               count+=1
               strArray2.remove(at: index2)
               break
           }
        }
    }

    return count

}
