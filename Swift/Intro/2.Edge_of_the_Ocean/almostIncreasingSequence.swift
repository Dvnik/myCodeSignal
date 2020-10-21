/*
Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing only one element is also considered to be strictly increasing.

Example


**For sequence = [1, 3, 2, 1], the output should be almostIncreasingSequence(sequence) = false.

There is no one element in this array that can be removed in order to get a strictly increasing sequence.

**For sequence = [1, 3, 2], the output should be almostIncreasingSequence(sequence) = true.

You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

這個問題想了滿久，還是查詢解答：
問題是在問「是否能只刪除1個數達成等比成長的陣列」，
起初很無腦的計算如果超過一個前後對比的數量就可以判斷，
事實上並沒有這麼簡單。

解決方法是取4個數互相比對，才能夠符合題目需求。
*/


func almostIncreasingSequence(sequence: [Int]) -> Bool
{
    let size:Int = sequence.count
    if size <= 2 // don't need check less 2 size array
    {
        return true
    }
    // Start check
    var count:Int = 0
    for i in 0..<size - 1
    {
        if sequence[i+1] <= sequence[i]
        {
            count+=1
            // 擴大對比，下下一個數和當前比;上一個數和下一個數比較。
            // 如果正確就標注可以跳過
            let skipNeighbor = i + 2 < size && sequence[i+2] <= sequence[i]
            let skipBack = i - 1 >= 0 && sequence[i+1] <= sequence[i-1]
            // 如果都可以跳過或是計算數目超過2，即無法達成「只刪除一個數還可維持等比成長」。
            if (skipNeighbor && skipBack) || count >= 2
            {
                return false
            }
        }
    }
    // 如果都通過表示此陣列是可以在極小情況下達成等比遞增
    return true
}
