import UIKit

/*
 Climbing Stairs

 You are climbing a staircase. It takes n steps to reach the top.

 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top? solve for swift
 
 */

//Time complexity: O(n) - Linear, where n is the number of steps.
//Space complexity: O(n) - Linear, due to the dynamic programming array.

class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        
        var dp = [Int](repeating: 0, count: n + 1)
        dp[1] = 1
        dp[2] = 2
        
        for i in 3...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        
        return dp[n]
    }
}
