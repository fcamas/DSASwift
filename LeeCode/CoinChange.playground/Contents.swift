/*
 322. Coin Change
 You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

 Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

 You may assume that you have an infinite number of each kind of coin.
 */

    class Solution {
        func coinChange(_ coins: [Int], _ amount: Int) -> Int {
            //coins = integer of coins of different nomination
            // ammount = total amount of money
            //return  = fewest number of coin  to make up that amount
            //return -1  = money can not be made up to amount( combination does exist)

            // a 2d container that holds all coins posibiliteis
            // interate over amount
            // for each amount iterate over each coin
            // calculate min value of coin

            guard amount > 0 else {
                return 0
            }
            var arr = Array(repeating: amount + 1, count: amount + 1)
            arr[0] = 0

            for i in 1...amount {
                for coin in coins {
                    if i >= coin{
                    arr[i] = min(arr[i], arr[i - coin] + 1)
                    }
                }
            }
            return arr[amount] != amount + 1 ?  arr[amount] : -1
        }
    }
