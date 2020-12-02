/*
You are given an array of integers representing coordinates of obstacles situated on a straight line.

Assume that you are jumping from the point with coordinate 0 to the right. You are allowed only to make jumps of the same length represented by some integer.

Find the minimal length of the jump enough to avoid all the obstacles.

Example

For inputArray = [5, 3, 6, 7, 9], the output should be avoidObstacles(inputArray) = 4.

這個看了答案，才知道他的題目所謂的「最短跨越距離」是要可以有陣列的數被整除的數字存在
這題的解法使用map尋遍整個陣列，再用contains去判斷有沒有0的存在
*/

func avoidObstacles(inputArray: [Int]) -> Int
{
    var minAvoid = 1
    while inputArray.map({ $0 % minAvoid }).contains(0) {
        minAvoid += 1
    }

    return minAvoid
}
