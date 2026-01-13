/// Returns the number of good pairs in the given array.
/// A pair `(i, j)` is considered a *good pair* if:
/// - `nums[i] == nums[j]`
/// - `i < j`
/// - Parameter nums: An array of integers.
/// - Returns: The total number of good pairs.
///
/// ### Examples
/// ```
/// Input: nums = [1,2,3,1,1,3]
/// Output: 4
/// Explanation:
/// Good pairs are (0,3), (0,4), (3,4), (2,5).
///
/// Input: nums = [1,1,1,1]
/// Output: 6
/// Explanation:
/// Every pair in the array is a good pair.
///
/// Input: nums = [1,2,3]
/// Output: 0
/// Explanation:
/// No good pairs exist.
/// ```

var nums1 = [1,2,3,1,1,3]
var nums2 = [1,1,1,1]
var nums3 = [1,2,3]


class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var counter = 0
        
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                if nums[i] == nums[j] && i < j {
                    counter += 1
                }
            }
        }
        
        return counter
    }
}

let solution = Solution()
print(solution.numIdenticalPairs(nums1)) // output: 4
print(solution.numIdenticalPairs(nums2)) // output: 6
print(solution.numIdenticalPairs(nums3)) // output: 0
