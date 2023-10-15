/*Maximum Subarray
 Medium
 Topics
 Companies
 Given an integer array nums, find the
 subarray
 with the largest sum, and return its sum.
 
 */

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var current = nums[0]
        var maxSub = nums[0]

        for i in 1..<nums.count{

            current  = max(nums[i],current + nums[i] )

            maxSub = max(maxSub, current)
        }
        return maxSub
    }
}
