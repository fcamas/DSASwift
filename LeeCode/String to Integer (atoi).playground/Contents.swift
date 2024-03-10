import UIKit
/*8. String to Integer (atoi)
 
 Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer (similar to C/C++'s atoi function).
 
 The algorithm for myAtoi(string s) is as follows:
 
 Read in and ignore any leading whitespace.
 Check if the next character (if not already at the end of the string) is '-' or '+'. Read this character in if it is either. This determines if the final result is negative or positive respectively. Assume the result is positive if neither is present.
 Read in next the characters until the next non-digit character or the end of the input is reached. The rest of the string is ignored.
 Convert these digits into an integer (i.e. "123" -> 123, "0032" -> 32). If no digits were read, then the integer is 0. Change the sign as necessary (from step 2).
 If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then clamp the integer so that it remains in the range. Specifically, integers less than -231 should be clamped to -231, and integers greater than 231 - 1 should be clamped to 231 - 1.
 Return the integer as the final result.
 Note:
 
 Only the space character ' ' is considered a whitespace character.
 Do not ignore any characters other than the leading whitespace or the rest of the string after the digits.
 
 */

// Time Complexity: O(n), 
//Space Complexity: O(1) - Linear time, constant space complexity.

class Solution {
    func myAtoi(_ s: String) -> Int {
        let str = Array(s)
        var index = 0
        var sign = 1
        var result = 0
        
        // Step 1: Ignore leading whitespaces
        while index < str.count && str[index] == " " {
            index += 1
        }
        
        // Step 2: Check for sign
        if index < str.count && (str[index] == "+" || str[index] == "-") {
            sign = str[index] == "+" ? 1 : -1
            index += 1
        }
        
        // Step 3: Read digits until non-digit or end of string
        while index < str.count && str[index].isDigit {
            // Check for overflow
            if result > Int32.max / 10 || (result == Int32.max / 10 && Int(str[index].asciiValue! - Character("0").asciiValue!) > 7) {
                return sign == 1 ? Int(Int32.max) : Int(Int32.min)
            }
            
            // Update result
            result = result * 10 + Int(str[index].asciiValue! - Character("0").asciiValue!)
            index += 1
        }
        
        // Apply sign
        return result * sign
    }
    
}

extension Character {
    var isDigit: Bool {
        return "0"..."9" ~= self
    }
}
