import Foundation
   
/*.
 
Longest Substring Without Repeating Characters
  
Given a string s, find the length of the longestsubstring without repeating characters.

*/

// Time Complexity O(n)
// Space Complexity O(n)

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict = [Character:Int]()
        var newString = Array(s)
        var maxLen = 0
        var left = 0

        for i in 0..<newString.count {
            if let leftIndex = dict[newString[i]] {
                left = max(left, leftIndex + 1)
            }
                dict[newString[i]] = i
                var currLen = i - left + 1
                maxLen = max(maxLen, currLen)
        }
        return maxLen
    }
}
