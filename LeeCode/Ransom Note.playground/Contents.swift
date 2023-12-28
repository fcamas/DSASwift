
/*
Ransom Note

Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

Each letter in magazine can only be used once in ransomNote.
 
*/

///Time Complexity: O(m + n), where m, n are lengths
///Space Complexity: O(c) , c is character set size
                                                            
                                                            
import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var charCount = [Character: Int]()

    // Count characters in magazine
    for char in magazine {
        charCount[char, default: 0] += 1
    }

    // Check if ransomNote can be constructed
    for char in ransomNote {
        guard let count = charCount[char], count > 0 else {
            // If the character is not present in magazine or its count is exhausted
            return false
        }
        charCount[char]! -= 1
    }
    // If all characters in ransomNote are found in magazine
    return true
    }
}
