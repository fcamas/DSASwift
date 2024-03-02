import UIKit

/*  Move Zeroes
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 Note that you must do this in-place without making a copy of the array.
 */

//Time complexity: O(n) - Linear time complexity due to iterating through the array once.
//Space complexity: O(1) - Constant space complexity since the operation is performed in-place without using any additional data structures.
func moveZeroes(_ nums: inout [Int]) {
    var index = 0
    
    // Iterate through the array
    for num in nums {
        // If the current number is not zero, move it to the front
        if num != 0 {
            nums[index] = num
            index += 1
        }
    }
    
    // Fill the remaining elements with zeroes
    while index < nums.count {
        nums[index] = 0
        index += 1
    }
}
