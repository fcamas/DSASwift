import UIKit

/*olve for swift Squares of a Sorted Array
 Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
 */

//Time complexity: O(n log n) we using sorting.
//Space complexity: O(n)

func sortedSquares(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    
    for num in nums {
        result.append(num * num)
    }
    
    return result.sorted()
}

