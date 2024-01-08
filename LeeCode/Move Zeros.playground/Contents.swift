/*
Move Zeroes

 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.
 */

//Time complexity: O(n) - linear, where n is the array length.
//Space complexity: O(1)

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var nonZeroIndex = 0
        
        // Iterate through the array
        for num in nums {
            if num != 0 {
                nums[nonZeroIndex] = num
                nonZeroIndex += 1
            }
        }
        
        // Fill the remaining elements with zeroes
        while nonZeroIndex < nums.count {
            nums[nonZeroIndex] = 0
            nonZeroIndex += 1
        }
    }
}
