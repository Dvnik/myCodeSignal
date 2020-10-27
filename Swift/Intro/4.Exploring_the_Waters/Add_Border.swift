/*
Given a rectangular matrix of characters, add a border of asterisks(*) to it.

Example

For

picture = ["abc",
           "ded"]
the output should be

addBorder(picture) = ["*****",
                      "*abc*",
                      "*ded*",
                      "*****"]

加入一個邊框符號，但要加在陣列裡面。
好像沒有不對稱圖案的框框，簡單寫法就這樣了
*/

func addBorder(picture: [String]) -> [String]
{
    // star info
    let star:Character = "*"
    let starCount:Int = picture[0].count + 2
    // result info
    var result:[String] = [String]()
    let resultCount:Int = picture.count + 2
    
    for i in 0..<resultCount
    {
        var borderValue:String// New Element
        if i == 0 || i == resultCount - 1// Head and foot
        {
            borderValue = ""
            for _ in 0..<starCount
            {
                borderValue.append(star)
            }
        }
        else
        {
            borderValue = picture[i-1]
            borderValue.insert(star, at: borderValue.startIndex)
            borderValue.insert(star, at: borderValue.endIndex)
        }
        result.append(borderValue)
    }
    return result
}
