/*
 Rotating the Box

 You are given an m x n matrix of characters box representing a side-view of a box. Each cell of the box is one of the following:

 A stone '#'
 A stationary obstacle '*'
 Empty '.'
 The box is rotated 90 degrees clockwise, causing some of the stones to fall due to gravity. Each stone falls down until it lands on an obstacle, another stone, or the bottom of the box. Gravity does not affect the obstacles' positions, and the inertia from the box's rotation does not affect the stones' horizontal positions.

 It is guaranteed that each stone in box rests on an obstacle, another stone, or the bottom of the box.

 Return an n x m matrix representing the box after the rotation described above.
 
 */
class Solution {
    func rotateTheBox(_ box: [[Character]]) -> [[Character]] {
    let m = box.count
    let n = box[0].count
    var res = Array(repeating: Array(repeating: Character("."), count: m), count: n)

    for i in 0..<m {
        var k = n - 1

        for j in (0..<n).reversed() {
            res[j][m - i - 1] = "."

            if box[i][j] != "." {
                k = box[i][j] == "*" ? j : k
                res[k][m - i - 1] = box[i][j]
                k -= 1
            }
        }
    }

    return res
}

}
