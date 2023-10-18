/*
 Partition Equal Subset Sum

 Given an integer array nums, return true if you can partition the array into two subsets such that the sum of the elements in both subsets is equal or false otherwise.
 */

class Solution {
    func canPartition(_ nums: [Int]) -> Bool {


        let sum = nums.reduce(0, +)
        guard sum % 2 == 0 else { return false }

        let target = sum / 2, n = nums.count
        var dp = Array(repeating: false, count: target+1)

        dp[0] = true
        for (i, num) in nums.enumerated() {
            let prev = dp
            for j in 1...target {
                dp[j] = prev[j] || (j - num >= 0 ? prev[j-num] : false)
            }
        }
        return dp[target]
    }
}
