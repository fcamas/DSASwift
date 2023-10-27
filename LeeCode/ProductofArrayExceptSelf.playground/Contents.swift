/*Product of Array Except Self

 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

*/

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var leftProducts = Array(repeating: 1, count: n)
        var rightProducts = Array(repeating: 1, count: n)
        var result = Array(repeating: 0, count: n)
        
        // Calculate the product of elements to the left of each element
        var leftProduct = 1
        for i in 0..<n {
            leftProducts[i] = leftProduct
            leftProduct *= nums[i]
        }
        
        // Calculate the product of elements to the right of each element
        var rightProduct = 1
        for i in (0..<n).reversed() {
            rightProducts[i] = rightProduct
            rightProduct *= nums[i]
        }
        
        // Calculate the final result by multiplying leftProducts and rightProducts
        for i in 0..<n {
            result[i] = leftProducts[i] * rightProducts[i]
        }
        
        return result
    }
}
