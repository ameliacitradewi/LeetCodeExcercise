/// You are given an integer array `nums`.
/// In one operation, you can add `1` or subtract `1` from any element of `nums`.
/// Your task is to determine the **minimum number of operations**
/// required to make **all elements in `nums` divisible by 3**.
/// - Returns:The minimum number of operations needed.
/// - Example 1:
///   ```
///   Input: nums = [1, 2, 3, 4]
///   Output: 3
///   ```
///   Explanation:
///   - Subtract 1 from 1 → 0
///   - Add 1 to 2 → 3
///   - Subtract 1 from 4 → 3
/// - Example 2:
///   ```
///   Input: nums = [3, 6, 9]
///   Output: 0
///   ```
///   Explanation:
///   All elements are already divisible by 3.

var nums1 = [1,2,3,4]
var nums2 = [3,6,9]

class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var output = 0
        
        for i in nums {
            if (i+1) % 3 == 0 || (i-1) % 3 == 0 {
                output += 1
            }
        }
        
        return output
    }
}

let solution = Solution()
print(solution.minimumOperations(nums1)) // output: 3
print(solution.minimumOperations(nums2)) // output: 0
