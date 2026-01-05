/// Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
/// Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:
/// Write a function to find the longest common prefix string amongst an array of strings.
/// If there is no common prefix, return an empty string " ".

var strs1 = ["flower", "flow", "flight"]
var strs2 = ["dog", "racecar", "car"]


class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        
        var reference = strs[0]
        
        for str in strs {
            while !str.hasPrefix(reference) {
                reference.removeLast()
                if reference.isEmpty { return "" }
            }
        }
        
        return reference
    }
}

let solution = Solution()
print(solution.longestCommonPrefix(strs1))
print(solution.longestCommonPrefix(strs2))


/// EXPLANATION
/// First, we guard that `strs` is not empty. If it is empty, we return an empty string as the output.
/// Second, we take the first word in the `strs` array as our reference. In this case, it is "flower".
/// Third, we loop through each word in the `strs` array and check the following:
///  1. `while !str.hasPrefix(reference)` keeps running as long as the current string does not have
///     `reference` as its prefix. For example, when checking the word "flow", we test whether
///     "flow" has the prefix "flower". This returns `false`, so we move to the next line of code.
///  2. Because the condition is `false`, we call `reference.removeLast()`, which changes the
///     reference from "flower" to "flowe".
///  3. This `while` loop continues until the current string has `reference` as its prefix.
///     In this case, the loop stops when `reference` becomes "flow".
///
/// After the second iteration of the `for` loop is complete, we move on to the next word in the array.
/// Now we check whether "flight" has "flow" as its prefix. Steps 1–3 are repeated for this word,
/// and we eventually find the final reference (which also acts as the longest common prefix) to be "fl".
