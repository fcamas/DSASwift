/*
 
 Insert Interval

 You are given an array of non-overlapping intervals intervals where intervals[i] = [starti, endi] represent the start and the end of the ith interval and intervals is sorted in ascending order by starti. You are also given an interval newInterval = [start, end] that represents the start and end of another interval.

 Insert newInterval into intervals such that intervals is still sorted in ascending order by starti and intervals still does not have any overlapping intervals (merge overlapping intervals if necessary).

 Return intervals after the insertion.
 
 */

//Time Complexity O(n)
//Space Complexity O(n)

class Solution {
   func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
    var target = newInterval
    var intervals = intervals
    var result = [[Int]]()
    var i = 0
    
   
    while i < intervals.count && intervals[i][1] < target[0] {
        result.append(intervals[i])
        i += 1
    }
    
    while i < intervals.count && intervals[i][0] <= target[1] {
        target[0] = min(target[0], intervals[i][0])
        target[1] = max(target[1], intervals[i][1])
        i += 1
    }
    
    result.append(target)
    
    while i < intervals.count {
        result.append(intervals[i])
        i += 1
    }
    
    return result
}

}
