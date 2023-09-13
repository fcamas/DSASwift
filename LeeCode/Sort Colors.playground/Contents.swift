/*
 Sort Colors

 Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

 We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

 You must solve this problem without using the library's sort function.
 */

// Time Complexity = O(n)
// Space Complexity = O(1)

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var low = 0
        var high = nums.count - 1
        var current = 0
        
        while current <= high {
            if nums[current] == 0 {
                nums.swapAt(current, low)
                low += 1
                current += 1
            } else if nums[current] == 2 {
                nums.swapAt(current, high)
                high -= 1
            } else {
                current += 1
            }
        }
    }
    
}
