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
        var low = 0  // Pointer for the starting index of 0s
        var high = nums.count - 1  // Pointer for the ending index of 2s
        var current = 0  // Current index
        
        // Loop until the current index crosses the high index
        while current <= high {
            if nums[current] == 0 {
                // If current element is 0, swap it with the element at low index
                nums.swapAt(current, low)
                low += 1  // Move the low pointer to the right
                current += 1  // Move the current pointer to the right
            } else if nums[current] == 2 {
                // If current element is 2, swap it with the element at high index
                nums.swapAt(current, high)
                high -= 1  // Move the high pointer to the left
                // Note that we don't increment the current pointer here because
                // after swapping, we need to re-examine the current element
            } else {
                // If current element is 1, just move to the next element
                current += 1
            }
        }
    }
}
