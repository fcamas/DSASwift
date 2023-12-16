import UIKit

/* Longest Common Prefix

 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".
 */

//Time Complexity: O(m * n)
//Space Complexity: O(1)

func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count > 0 else {
        return ""
    }

    var commonPrefix = strs[0]

    for i in 1..<strs.count {
        let currentString = strs[i]

        var j = 0
        while j < commonPrefix.count && j < currentString.count && commonPrefix[commonPrefix.index(commonPrefix.startIndex, offsetBy: j)] == currentString[currentString.index(currentString.startIndex, offsetBy: j)] {
            j += 1
        }

        if j == 0 {
            return ""
        }

        commonPrefix = String(commonPrefix.prefix(j))
    }

    return commonPrefix
}

