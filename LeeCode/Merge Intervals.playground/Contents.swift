/*Merge Intervals
 
 Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.
 
 */

// Time complexity O(n log n)
// Space complexity O(N)

class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {

        let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
    
        var mergedIntervals: [[Int]] = []
        
        for interval in sortedIntervals {
            if mergedIntervals.isEmpty || interval[0] > mergedIntervals.last![1] {

                mergedIntervals.append(interval)
            } else {
  
                mergedIntervals[mergedIntervals.count - 1][1] = max(mergedIntervals.last![1], interval[1])
            }
        }
        
        return mergedIntervals
    }
}
