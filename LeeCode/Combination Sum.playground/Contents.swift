
/*
 Combination Sum

 Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

 The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the
 frequency
  of at least one of the chosen numbers is different.

 The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.
 */

// Time complexity O(2^n)
// Space complexity  O(N)
import Foundation

class Solution {
   func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var result: [[Int]] = []
    
    func backtrack(_ start: Int, _ target: Int, _ currentCombination: [Int]) {
        if target == 0 {
            result.append(currentCombination)
            return
        }
        
        if target < 0 {
            return
        }
        
        for i in start..<candidates.count {
            var newCombination = currentCombination
            newCombination.append(candidates[i])
            backtrack(i, target - candidates[i], newCombination)
        }
    }
    
    backtrack(0, target, [])
    return result
}
}
