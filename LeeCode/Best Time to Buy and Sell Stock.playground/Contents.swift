/*
 
 121. Best Time to Buy and Sell Stock

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 
 */



//Time Complexity O(n)
//Space Complexity 0(1)
//Soluotn2 using min and max

class Solution2 {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0

        for price in prices {
            // Update the minimum buying price
            minPrice = min(minPrice, price)
            
            // Update the maximum profit if selling at the current price
            maxProfit = max(maxProfit, price - minPrice)
        }

        return maxProfit
    }
}
