
/*
 SumTwo
 
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 */

// Time Complexity O(n)
// Space Complexity O(1)

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dict = [Int:Int]()
        
         for i in 0..<nums.count{
             let missingValue = target - nums[i]

             if let existValue = dict[missingValue]{
                 return [existValue, i]
             } else {
                 dict[nums[i]] = i
             }
         }


        return []
    }
}


// example
let nums = [1,2,3,4,5,6,7,8]
let target = 5

var  usingSolution  = Solution()
var result = usingSolution.twoSum(nums, target)
print(result) // [1,2]
