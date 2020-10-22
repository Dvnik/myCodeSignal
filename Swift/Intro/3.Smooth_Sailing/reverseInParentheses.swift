/*
Write a function that reverses characters in (possibly nested) parentheses in the input string.

Input strings will always be well-formed with matching ()s.

Example

For inputString = "(bar)", the output should be reverseInParentheses(inputString) = "rab";
For inputString = "foo(bar)baz", the output should be reverseInParentheses(inputString) = "foorabbaz";
For inputString = "foo(bar)baz(blim)", the output should be reverseInParentheses(inputString) = "foorabbazmilb";
For inputString = "foo(bar(baz))blim", the output should be reverseInParentheses(inputString) = "foobazrabblim".
Because "foo(bar(baz))blim" becomes "foo(barzab)blim" and then "foobazrabblim".

看似簡單地「將括號內的字串反轉」，但是對於swift的字串特性還掌握的不熟悉的關係所以花了不少時間。
其中看到有多層次形式的括號以為用遞迴法就可以解決，但是出現了沒有遞迴的獨立兩個括號就出現error。

後來參考了別人的做法完成了。

主要是swift的String不像其他的程式語言可以直接將字串當成陣列在操作，
需要做出類似陣列操作的時候就得先拿到String.Index的標籤，
直接丟int下去的操作會不給過，所以就直接用暴力的方式取得這些文字數目標籤。

*/
func reverseInParentheses(inputString: String) -> String
{
    // Only passed 2/7
    // // get first and last brackets
    // let first = inputString.firstIndex(of: "(")
    // let last = inputString.lastIndex(of: ")")
    // // recored a rsult value
    // var aResult:String = inputString
    // // check have part of brackets, if not will just return
    // if let fir = first, let las = last
    // {
    //     // get brackets strings
    //     var strBrackets = String(inputString[fir..<las])
    //     // because niculd "(" in strings, ex:(baz) > (baz. so need remove first index word.
    //     strBrackets.remove(at: strBrackets.startIndex)
    //     // if have next "(", do this function again
    //     if let _ = strBrackets.firstIndex(of: "(")
    //     {
    //         strBrackets = reverseInParentheses(inputString: strBrackets)
    //     }
    //     // reversed str
    //     strBrackets = String(strBrackets.reversed())
    //     // remake str, pick first part and second part
    //     let firstStr:String = String(inputString[inputString.startIndex..<fir])
    //     var secondStr:String = String(inputString[las..<inputString.endIndex])
    //     secondStr.remove(at: secondStr.startIndex)
    //     // marge result
    //     aResult = "\(firstStr)\(strBrackets)\(secondStr)"
    // }// if not a part brackets, just return
    // return aResult
    // passed 7/7
    var result = inputString

    while result.firstIndex(of: "(") != nil
    {
        // get last open bracket and next String.Index
        let lastOpen = result.lastIndex(of: "(")!
        let lastOpenNext = result.index(lastOpen, offsetBy: 1)
        // get first close bracket after last open and next String.Index
        let firstClose = result[lastOpenNext...].firstIndex(of: ")")!
        let firstCloseNext = result.index(firstClose, offsetBy: 1)
        //  use string range get 3 part to merge, in brackets string need reversed
        result = String(result[..<lastOpen]) +
         String(result[lastOpenNext..<firstClose].reversed()) +
         String(result[firstCloseNext...])
    }

    return result
}



