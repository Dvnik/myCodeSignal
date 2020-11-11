/*
Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

Example

For inputArray = [2, 4, 1, 0], the output should be arrayMaximalAdjacentDifference(inputArray) = 3.

找出兩組數字之間差距最大的數目
*/

func arrayMaximalAdjacentDifference(inputArray: [Int]) -> Int
{
    let sliding_max = abs(inputArray[1] - inputArray[0])
    var global_max = sliding_max

    for i in 2..<inputArray.count
    {
        global_max = max(abs(inputArray[i] - inputArray[i-1]), global_max)
    }


    return global_max

}
