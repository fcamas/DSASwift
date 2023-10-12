
/*Jump Game

You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

Return true if you can reach the last index, or false otherwise.
 
 */

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
    var maxReachable = 0

    for i in 0..<nums.count {
        
        if i > maxReachable {
            return false
        }

        
        maxReachable = max(maxReachable, i + nums[i])

        if maxReachable >= nums.count - 1 {
            return true
        }
    }

    return false
}
}
