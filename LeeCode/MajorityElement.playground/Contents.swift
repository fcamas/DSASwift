/*

 Majority Element

 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 */

// Time Complexity O(n)
// Space Complexity O(1)

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        

        var maxElement = nums[0]
        var count = 1
        for i in 1..<nums.count{
            if count == 0{
                maxElement = nums[i]
                count = 1
            } else if maxElement == nums[i]{
                count += 1
            }else {
                count -= 1
            }
        }
        return maxElement
    }
}
