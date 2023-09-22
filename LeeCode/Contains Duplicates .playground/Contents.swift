/*
 
 Contains Duplicate
 
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 */

//Time complexity O(n)
//Space complexity O(n)


class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        //nums = [1,2,3,1]
        
        Set(nums).count != nums.count
    }
}


class Solution2 {
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()
        
        for num in nums {
            if seen.contains(num) {
                return true // Found a duplicate
            }
            
            seen.insert(num)
        }
        
        return false // No duplicates found
    }
    
}
