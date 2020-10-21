/*
Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, each statue having an non-negative integer size. Since he likes to make things perfect, he wants to arrange them from smallest to largest so that each statue will be bigger than the previous one exactly by 1. He may need some additional statues to be able to accomplish that. Help him figure out the minimum number of additional statues needed.

Example

For statues = [6, 2, 3, 8], the output should be makeArrayConsecutive2(statues) = 3.
Ratiorg needs statues of sizes 4, 5 and 7.

這個問題我看得挺久才了解他要問的是什麼：
首先描述一個人收到一組「禮物」，裡面有不同大小雕像。
Ratiorg喜歡「雕像由小到大排序」，且每一個雕像的大小「差距只有1」。
找出Ratiorg還需要多少個雕像才能完成以上需求？

--------
排序是沒問題，現在語言上都有sorted可以快速完成
至於「缺多少個雕像才能完成由大到小排列，且只差1」，查了許久才知道快速寫法：最大的數減最小的數，再減全部陣列長度＋１。
*/

func makeArrayConsecutive2(statues: [Int]) -> Int
{
    let newStatues = statues.sorted()
    return (newStatues[newStatues.count - 1] - newStatues[0] - newStatues.count + 1)
}
