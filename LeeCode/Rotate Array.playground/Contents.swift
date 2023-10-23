
/*
 Rotate Array
 
 Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
 */
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        let k = k % n  // Calculate the effective number of rotations
        
        // Create an auxiliary array to store the rotated elements
        var rotated = Array(repeating: 0, count: n)
        
        // Copy the last k elements to the beginning of the new array
        for i in 0..<k {
            rotated[i] = nums[n - k + i]
        }
        
        // Copy the first n - k elements to the end of the new array
        for i in 0..<(n - k) {
            rotated[k + i] = nums[i]
        }
        
        // Copy the rotated elements back to the original array
        nums = rotated
    }
}
