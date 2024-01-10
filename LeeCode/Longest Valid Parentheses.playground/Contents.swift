import UIKit

/* Longest Valid Parentheses
 Given a string containing just the characters '(' and ')', return the length of the longest valid (well-formed) parentheses
 substring
 .
 */

//Time complexity: O(n) - Linear,
//Space complexity: O(n) - Linear


class Solution {
    func longestValidParentheses(_ s: String) -> Int {
        var stack = [-1] // Initialize the stack with -1 as a sentinel value
        var maxLength = 0

        for (index, char) in s.enumerated() {
            if char == "(" {
                stack.append(index)
            } else {
                // Pop the last element from the stack if it's not empty
                if !stack.isEmpty {
                    stack.removeLast()
                    // Check if the stack is empty after popping, if yes, push the current index
                    if stack.isEmpty {
                        stack.append(index)
                    } else {
                        // Calculate the length of valid parentheses substring
                        maxLength = max(maxLength, index - stack.last!)
                    }
                } else {
                    // Push the current index if the stack is empty
                    stack.append(index)
                }
            }
        }

        return maxLength
    }
}
