/*
After becoming famous, the CodeBots decided to move into a new building together. Each of the rooms has a different cost, and some of them are free, but there's a rumour that all the free rooms are haunted! Since the CodeBots are quite superstitious, they refuse to stay in any of the free rooms, or any of the rooms below any of the free rooms.

Given matrix, a rectangular matrix of integers, where each value represents the cost of the room, your task is to return the total sum of all rooms that are suitable for the CodeBots (ie: add up all the values that don't appear below a 0)

Example

For

matrix = [[0, 1, 1, 2],
          [0, 5, 0, 0],
          [2, 0, 3, 3]]
the output should be
matrixElementsSum(matrix) = 9.
There are several haunted rooms, so we'll disregard them as well as any rooms beneath them. Thus, the answer is 1 + 5 + 1 + 2 = 9.

For

matrix = [[1, 1, 1, 0],
          [0, 5, 0, 1],
          [2, 1, 3, 10]]
the output should be
matrixElementsSum(matrix) = 9.

Note that the free room in the final column makes the full column unsuitable for bots (not just the room directly beneath it). Thus, the answer is 1 + 1 + 1 + 5 + 1 = 9.



題目是說假設有一棟公寓（二維陣列），每間房間都有不同的價格。
有一個人想要入住的條件如下：
＊標註為免費(0)的房間表示有鬧鬼，絕對不住。
＊免費房間的下一層也不住。

題目：請計算所有這個人適合住的房間的價格總和

這個題目需要一點想像力，對二維陣列掌握的想像力。
所以要用表格的方式看待這個二維陣列，然後從左上至右下搜尋就可以符合條件。
*/


func matrixElementsSum(matrix: [[Int]]) -> Int
{
    var sum:Int = 0
    // columns
    for i in 0..<matrix[0].count
    {
        //rows
        for k in 0..<matrix.count
        {
            // search itme: row->column
            if(matrix[k][i] == 0)
            {
                break
            }

            sum += matrix[k][i]
        }
    }
    return sum
}
