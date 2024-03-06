import UIKit
/* Number of Islands

 Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

 An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.
 
 */

//Time Complexity: O(m * n), where m is the number of rows and n is the number of columns.
//Space Complexity: O(m * n), where m is the number of rows and n is the number of columns.

func numIslands(_ grid: [[Character]]) -> Int {
    guard !grid.isEmpty else { return 0 }
    
    var grid = grid
    let rows = grid.count
    let cols = grid[0].count
    var numIslands = 0
    
    func dfs(_ row: Int, _ col: Int) {
        guard row >= 0 && row < rows && col >= 0 && col < cols && grid[row][col] == "1" else {
            return
        }
        
        grid[row][col] = "0"
        
        // Explore adjacent cells
        dfs(row + 1, col) // Down
        dfs(row - 1, col) // Up
        dfs(row, col + 1) // Right
        dfs(row, col - 1) // Left
    }
    
    for row in 0..<rows {
        for col in 0..<cols {
            if grid[row][col] == "1" {
                numIslands += 1
                dfs(row, col)
            }
        }
    }
    
    return numIslands
}
