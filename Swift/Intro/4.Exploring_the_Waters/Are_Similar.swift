/*
Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of the arrays.

Given two arrays a and b, check whether they are similar.

Example

For a = [1, 2, 3] and b = [1, 2, 3], the output should be areSimilar(a, b) = true.

The arrays are equal, no need to swap any elements.

For a = [1, 2, 3] and b = [2, 1, 3], the output should be areSimilar(a, b) = true.

We can obtain b from a by swapping 2 and 1 in b.

For a = [1, 2, 2] and b = [2, 1, 1], the output should be areSimilar(a, b) = false.

Any swap of any two elements either in a or in b won't make a and b equal.


 問題是問說最多掉換一個數，去檢測兩組陣列的數字是否一樣。
*/

func areSimilar(a: [Int], b: [Int]) -> Bool
{
    if a.count != b.count
    {
        return false
    }

    var count:Int = 0
    for i in 0..<a.count
    {
        if a[i] != b[i]
        {
            count += 1
        }
    }

    return count <= 2 && a.sorted() == b.sorted()
}
