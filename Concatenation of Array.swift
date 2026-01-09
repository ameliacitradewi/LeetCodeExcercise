/// You are given an integer array `nums` of length `n`.
/// You want to create a new array `ans` of length `2n` such that:
/// - `ans[i] == nums[i]`
/// - `ans[i + n] == nums[i]`
/// for all `0 <= i < n` (0-indexed).

/// In other words, `ans` is the concatenation of `nums` with itself.
/// - Returns: The resulting array `ans`.

var nums1 = [1,2,1]
var nums2 = [1,3,2,1]

class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var output = nums
        
        for i in output {
            output.append(i)
        }
        
        return output
    }
}

let solution = Solution()
print(solution.getConcatenation(nums1)) // output: [1,2,1,1,2,1]
print(solution.getConcatenation(nums2)) // output: [1,3,2,1,1,3,2,1]
