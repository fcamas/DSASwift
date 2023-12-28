import UIKit

/*solve for swift Move Zeroes
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.
 */
//Time complexity: O(n), where n is the length of the input array.
//Space complexity: O(1), constant space used.

func moveZeroes(_ nums: inout [Int]) {
    var nonZeroIndex = 0
    
    // Move non-zero elements to the front
    for num in nums {
        if num != 0 {
            nums[nonZeroIndex] = num
            nonZeroIndex += 1
        }
    }
    
    // Fill the remaining positions with zeroes
    while nonZeroIndex < nums.count {
        nums[nonZeroIndex] = 0
        nonZeroIndex += 1
    }
}
