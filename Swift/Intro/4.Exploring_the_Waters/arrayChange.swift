/*

You are given an array of integers. On each move you are allowed to increase exactly one of its element by one. Find the minimal number of moves required to obtain a strictly increasing sequence from the input.

Example

For inputArray = [1, 1, 1], the output should be arrayChange(inputArray) = 3.

找出陣列中變成遞增陣列所需要的步數(一次+1)，並全部計算出來

只是沒意識到問題是要「當遇到非遞增關係時要加到成為遞增關係，且計算總數」這樣做

*/

func arrayChange(inputArray: [Int]) -> Int
{
    if inputArray.count == 1
    {
        return 0;
    }
    var result:[Int] = inputArray
    var count:Int = 0

    for i in 0..<result.count - 1
    {
        while(result[i+1] <= result[i])
        {
            result[i+1]+=1
            count+=1
        }
    }

    return count;
}
