/*
Last night you partied a little too hard. Now there's a black and white photo of you that's about to go viral! You can't let this ruin your reputation, so you want to apply the box blur algorithm to the photo to hide its content.

The pixels in the input image are represented as integers. The algorithm distorts the input image in the following way: Every pixel x in the output image has a value equal to the average value of the pixel values from the 3 × 3 square that has its center at x, including x itself. All the pixels on the border of x are then removed.

Return the blurred image as an integer, with the fractions rounded down.


Example

For

image = [[1, 1, 1],
         [1, 7, 1],
         [1, 1, 1]]
the output should be boxBlur(image) = [[1]].

To get the value of the middle pixel in the input 3 × 3 square: (1 + 1 + 1 + 1 + 7 + 1 + 1 + 1 + 1) = 15 / 9 = 1.66666 = 1. The border pixels are cropped from the final result.

For

image = [[7, 4, 0, 1],
         [5, 6, 2, 2],
         [6, 10, 7, 8],
         [1, 4, 2, 0]]
the output should be

boxBlur(image) = [[5, 4],
                  [4, 4]]
There are four 3 × 3 squares in the input image, so there should be four integers in the blurred output. To get the first value: (7 + 4 + 0 + 5 + 6 + 2 + 6 + 10 + 7) = 47 / 9 = 5.2222 = 5. The other three integers are obtained the same way, then the surrounding integers are cropped from the final result.

 box blur algorithm:模糊演算法

原先不太懂模糊演算法該怎麼算，所以還是直接看了答案。
因為沒有swift版的解答只好每個語言的解法都拿來參考。
有些是過度簡潔了算數，而有些流程過於複雜。
最後找了一個看起來還好理解，又不會過度簡化與複雜化的答案拿來抄了。

大概了解到模糊演算法基本上是一個方形陣列，取出3x3大小的像素格計算出模糊後的數值會是多少。
而且3x3的格子是可以重複的，因此是需要尋遍整個陣列。
二維陣列中的「長」與「寬」的數目要減少2也是這個原因，至於在計算時加3則是count與index的落差為1的關係。
最後要除以9是因為3x3模糊話是有「縮小」陣列的大小，因此要把相加的9格總數去平均，大概是這樣。

*/


func boxBlur(image: [[Int]]) -> [[Int]]
{
    //copy somebody ans turn into swift
    var blurArray = [[Int]]()
    // y,x will set 3x3 box range.
    for y in 0..<image.count - 2
    {
        var row = [Int]()
        for x in 0..<image[y].count - 2
        {
            var boxSquare = 0
            // i,j is image index.
            for i in y..<y+3
            {
                for j in x..<x+3
                {
                    boxSquare = boxSquare + image[i][j]
                }
            }
            // append sum to row, and division border pixels nums(3x3=9)
            row.append(boxSquare/9)
        }
        // append rows
        blurArray.append(row)
    }
    //return Blur nums
    return blurArray
}
