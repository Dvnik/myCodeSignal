/*
Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees. People can be very tall!

Example

For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].

題目簡單來說就是：排序但是不要動到某些數字的位置(-1)。但是我還是看了很久才知道題目要求的是啥。
描述來說就是：一些人(正數)站在樹(-1)的中間，你的任務是將這些人重新排序而不動到樹的位置。

因為swift的方法參數必定是let型態，也就是不可以改變的類型，在參考別人的做法時還需要繞了一些路
*/
func sortByHeight(a: [Int]) -> [Int]
{
    var numArray:[Int] = [Int]()
    var tempArray:[Int] = [Int]()
    for i in 0..<a.count
    {
        if a[i] == -1// pick up -1 in array index, call tempArray
        {
            tempArray.append(i)
        }
        else// make don't have -1 array, numArray(because swift function value is let type)
        {
            numArray.append(a[i])
        }
    }
    // sort numArray
    numArray.sort()
    // insert -1 in numArray, by record index(tempArray)
    for index in tempArray
    {
        numArray.insert(-1, at: index)
    }
    // return result
    return numArray
}

