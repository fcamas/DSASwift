
/*
 Count Primes

 Given an integer n, return the number of prime numbers that are strictly less than n.
 */
class Solution {
    func countPrimes(_ n: Int) -> Int {

        if n < 2{
            return 0
        }
        var isPrime = [Bool](repeating:true, count: n)
        isPrime[0] = false
        isPrime[1] = false

        var count = 0

        for i in 2..<n {

            if isPrime[i] {
                count += 1
                var multiply =  i*i
                while multiply < n {
                    isPrime[multiply] = false
                    multiply += i
                }
            }
        }
        return count
    }
}
