import Foundation

/* House Robber

You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

*/

// Time complexity O(n)
// Space complexity O(1)

class Solution {
   func rob(_ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    
    if nums.count == 1 {
        return nums[0]
    }
    
    var maxRobbedPrev = nums[0]
    var maxRobbedPrevPrev = 0
    
    for i in 1..<nums.count {
        let temp = maxRobbedPrev
        maxRobbedPrev = max(maxRobbedPrevPrev + nums[i], maxRobbedPrev)
        maxRobbedPrevPrev = temp
    }
    
    return max(maxRobbedPrev, maxRobbedPrevPrev)
}
}
