/*
Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

Example

For inputArray = [3, 6, -2, -5, 7, 3], the output should be adjacentElementsProduct(inputArray) = 21.

7 and 3 produce the largest product.

找出一個陣列兩個相乘的值是所有組合中最大的
*/

func adjacentElementsProduct(inputArray: [Int]) -> Int
{
    var largest:Int = inputArray[0] * inputArray[1]
    for i in 0..<inputArray.count - 1
    {
        let value = inputArray[i] * inputArray[i+1]
        if value > largest
        {
            largest = value
        }

    }
    return largest
}
