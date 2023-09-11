/*
 
 Gas Station

 There are n gas stations along a circular route, where the amount of gas at the ith station is gas[i].

 You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from the ith station to its next (i + 1)th station. You begin the journey with an empty tank at one of the gas stations.

 Given two integer arrays gas and cost, return the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return -1. If there exists a solution, it is guaranteed to be unique
 */

// Time complexity O(n)
// Space complexity O(1)


class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalGas = 0
        var currentGas = 0
        var leftIndex = 0
        for i in 0..<gas.count {
            
            currentGas += gas[i] - cost[i]
            totalGas += gas[i] - cost[i]

            if currentGas < 0 {
                leftIndex = i + 1
                currentGas = 0
            }
        }

        return totalGas >= 0 ? leftIndex : -1
    }
}
