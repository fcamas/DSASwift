/*

Companies
Given a binary array nums, return the maximum length of a contiguous subarray with an equal number of 0 and 1.


 */


import UIKit
func findMaxLength(_ nums: [Int]) -> Int {
    var maxLen = 0
    var sumToIndex = [0: -1] // Initialize with a sum of 0 at index -1

    var sum = 0

    for (index, num) in nums.enumerated() {
        if num == 0 {
            sum -= 1
        } else {
            sum += 1
        }

        if let prevIndex = sumToIndex[sum] {
            // Calculate the length of the current subarray with equal 0s and 1s
            maxLen = max(maxLen, index - prevIndex)
        } else {
            // Store the current sum and its index if encountered for the first time
            sumToIndex[sum] = index
        }
    }

    return maxLen
}

