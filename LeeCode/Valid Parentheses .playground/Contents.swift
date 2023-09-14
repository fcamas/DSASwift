/*
 
 Valid Parentheses
 
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
 */

//Time compelxity O(n)
//Space complexity O(n)

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let bracketPairs: [Character: Character] = [')': '(', '}': '{', ']': '[']
            
            for char in s {
                if let openBracket = bracketPairs[char] {
                    
                    if stack.isEmpty || stack.popLast() != openBracket {
                        return false
                    }
                } else {
                    stack.append(char)
                }
            }
            
            
            return stack.isEmpty
        }
                                                            
    }
