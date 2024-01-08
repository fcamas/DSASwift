/*
 Flood Fill
 An image is represented by an m x n integer grid image where image[i][j] represents the pixel value of the image.

 You are also given three integers sr, sc, and color. You should perform a flood fill on the image starting from the pixel image[sr][sc].

 To perform a flood fill, consider the starting pixel, plus any pixels connected 4-directionally to the starting pixel of the same color as the starting pixel, plus any pixels connected 4-directionally to those pixels (also with the same color), and so on. Replace the color of all of the aforementioned pixels with color.

 Return the modified image after performing the flood fill.
 */

//Time complexity: O(m * n) - where m is the number of rows and n is the number of columns in the image.
//Space complexity: O(m * n) - for the visited array.
                                    
class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var visited = Array(repeating: Array(repeating: false, count: image[0].count), count: image.count)
        var modifiedImage = image
        let originalColor = image[sr][sc]
        
        dfs(&modifiedImage, sr, sc, originalColor, newColor, &visited)
        
        return modifiedImage
    }
    
    func dfs(_ image: inout [[Int]], _ row: Int, _ col: Int, _ originalColor: Int, _ newColor: Int, _ visited: inout [[Bool]]) {
        if row < 0 || row >= image.count || col < 0 || col >= image[0].count || visited[row][col] || image[row][col] != originalColor {
            return
        }
        
        image[row][col] = newColor
        visited[row][col] = true
        
        // Move in all 4 directions
        dfs(&image, row + 1, col, originalColor, newColor, &visited) // down
        dfs(&image, row - 1, col, originalColor, newColor, &visited) // up
        dfs(&image, row, col + 1, originalColor, newColor, &visited) // right
        dfs(&image, row, col - 1, originalColor, newColor, &visited) // left
    }
}

