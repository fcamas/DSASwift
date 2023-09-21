/*
 
 Contains Duplicate

 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 */
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        //nums = [1,2,3,1]

       Set(nums).count != nums.count

    }
}
