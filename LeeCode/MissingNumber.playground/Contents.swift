/*
 Missing Number
 Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
 */

// Time complexity of O(n)
// Space complexity of O(1)

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var missing = nums.count // Initialize missing as the last index
        
        for (index, num) in nums.enumerated() {
            missing ^= index ^ num
        }
        
        return missing
    }
    
}
