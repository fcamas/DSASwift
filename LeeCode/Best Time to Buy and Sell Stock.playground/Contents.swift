/*
 
 121. Best Time to Buy and Sell Stock

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 
 */

//Time Complexity O(n)
//Space Complexity 0(1)

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var buyOpportunity = prices[0]
        var maxProfit = 0

        for i in 1..<prices.count {

            if buyOpportunity > prices[i]{
                buyOpportunity = prices[i]
            }else {
                let dayProfit = prices[i] - buyOpportunity

                if maxProfit < dayProfit {
                    maxProfit = dayProfit
                }
            }
        }

        return maxProfit
    }
}
