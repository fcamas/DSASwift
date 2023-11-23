import UIKit

var greeting = "Hello, playground"

/*
 Subarray Sum Equals K
 Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

 A subarray is a contiguous non-empty sequence of elements within an array.
 
 */

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var sumToCount = [0: 1] // Initialize with a sum of 0 seen once
    var sum = 0
    var count = 0

    for num in nums {
        sum += num
        if let previousCount = sumToCount[sum - k] {
            count += previousCount
        }

        sumToCount[sum, default: 0] += 1
    }

    return count
}

