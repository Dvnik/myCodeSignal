/*
Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

Given a ticket number n, determine if it's lucky or not.


Example

For n = 1230, the output should be isLucky(n) = true;
For n = 239017, the output should be isLucky(n) = false.

給出一組數字，個別計算數字的前半與後半相加後的值是不是相同，如果是就回傳“True”。

我本來想直接對數字尋找個數，不過我沒找到swift要如何做。
轉成字串還要解決indexof的順序問題，
最後則是用「除以10」取出所有的位數，
因為這題沒有講求數字位置只要是正確的對切前後半去計算即可。
*/

func isLucky(n: Int) -> Bool
{
    var firHalfSum:Int = 0
    var secHalfSum:Int = 0
    var numArray:[Int] = Array<Int>()
    // turn into number array
    var number:Int = n
    while (number > 0)
    {
        let a = number % 10
        numArray.append(a);
        number = number / 10
    }
    // sum, count half, and return answer
    for i in 0..<numArray.count
    {
        if i < numArray.count/2
        {
            firHalfSum += numArray[i]
        }
        else
        {
            secHalfSum += numArray[i]
        }
    }
    return firHalfSum == secHalfSum
}
