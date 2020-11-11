/*
Call two arms equally strong if the heaviest weights they each are able to lift are equal.

Call two people equally strong if their strongest arms are equally strong (the strongest arm can be both the right and the left), and so are their weakest arms.

Given your and your friend's arms' lifting capabilities find out if you two are equally strong.

Example

For yourLeft = 10, yourRight = 15, friendsLeft = 15, and friendsRight = 10, the output should be areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight) = true;
For yourLeft = 15, yourRight = 10, friendsLeft = 15, and friendsRight = 10, the output should be areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight) = true;
For yourLeft = 15, yourRight = 10, friendsLeft = 15, and friendsRight = 9, the output should be areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight) = false.

這題比較玩文字遊戲，
題目是說：你和朋友的兩隻手臂不同壯，不論左右手只要粗壯度一樣結果就是相同程度的健壯。

意思就是說要分成兩個陣列：你的手臂陣列 ＆ 朋友的手臂陣列 去互相比較

*/

func areEquallyStrong(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool
{
    var yourArms:[Int] = [yourLeft, yourRight].sorted()
    var friendsArms:[Int] = [friendsLeft, friendsRight].sorted()

    return yourArms == friendsArms

}
