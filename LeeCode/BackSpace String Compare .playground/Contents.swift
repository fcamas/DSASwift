import UIKit

/*
 Backspace String Compare

 Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.

 Note that after backspacing an empty text, the text will continue empty.
 */

//Time Complexity: O(m + n) - where m and n are the lengths of strings s and t, respectively.
//Space Complexity: O(m + n) - space is used to store processed strings.

class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        return processString(s) == processString(t)
    }

    func processString(_ str: String) -> String {
        var result = [Character]()

        for char in str {
            if char == "#" {
                if !result.isEmpty {
                    result.removeLast()
                }
            } else {
                result.append(char)
            }
        }

        return String(result)
    }
}

