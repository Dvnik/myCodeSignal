/*
In the popular Minesweeper game you have a board with some mines and those cells that don't contain a mine have a number in it that indicates the total number of mines in the neighboring cells. Starting off with some arrangement of mines we want to create a Minesweeper game setup.

Example

For

matrix = [[true, false, false],
          [false, true, false],
          [false, false, false]]
the output should be

minesweeper(matrix) = [[1, 2, 1],
                       [2, 1, 1],
                       [1, 1, 1]]

踩地雷遊戲，和前一題的模糊算法有點類似，不過差別在要在一個座標上做周圍的檢查。

這個解答的做法是，對炸彈周圍8格做加成計數，以確保炸彈周圍都有被計算到。
由於針對炸彈本身的周圍做計算，就會有重複計數的結果，這也是題目所要的。
反過來說就是在這個座標的周圍8格藏有N個炸彈。
*/

func minesweeper(matrix: [[Bool]]) -> [[Int]]
{
        //copy somebody ans turn into swift
    var mineWarning = [[Int]](repeating: [Int](repeating: 0, count: matrix[0].count), count: matrix.count)
    for y in 0..<matrix.count
    {
        for x in 0..<matrix[y].count
        {
            if(!matrix[y][x])
            {
                continue;
            }
            for i in -1..<2
            {
                for j in -1..<2
                {
                    if(i==0 && j==0){
                        continue
                    }
                    // if mine not out of range, count this block.
                    if y+i>=0 && y+i<matrix.count && x+j>=0 && x+j<matrix[y].count
                    {
                        mineWarning[y+i][x+j] += 1
                    }

                }
            }
        }
    }
    return mineWarning
}
