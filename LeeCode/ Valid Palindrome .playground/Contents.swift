/*
 Valid Palindrome
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
 
 Given a string s, return true if it is a palindrome, or false otherwise.
 
 */

//Time Complexity O(n)
//Space ComplexityO(n)

class Solution2 {
    func isPalindrome(_ s: String) -> Bool {
        let cleanedString = s.lowercased().filter { $0.isLetter || $0.isNumber }
        return cleanedString == String(cleanedString.reversed())
    }
}
