import UIKit

var greeting = "Hello, playground"
/*
 Non-overlapping Intervals

 Given an array of intervals intervals where intervals[i] = [starti, endi], return the minimum number of intervals you need to remove to make the rest of the intervals non-overlapping.
 */

func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
    guard intervals.count > 1 else {
        return 0
    }

    // Sort intervals based on their end points
    let sortedIntervals = intervals.sorted { $0[1] < $1[1] }

    var count = 0
    var end = sortedIntervals[0][1]

    for i in 1..<sortedIntervals.count {
        let currentStart = sortedIntervals[i][0]
        let currentEnd = sortedIntervals[i][1]

        if currentStart < end {
            // Overlapping intervals, remove the one with the larger end point
            count += 1
        } else {
            // Non-overlapping interval, update the end point
            end = currentEnd
        }
    }

    return count
}

