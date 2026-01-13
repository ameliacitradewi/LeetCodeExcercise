/// You are given an integer array nums. Transform nums by performing the following operations in the exact order specified:
/// Replace each even number with 0.
/// Replace each odd numbers with 1.
/// Sort the modified array in non-decreasing order.
/// Return the resulting array after performing these operations.

var nums = [4,3,2,1]
var nums2 = [1,5,1,4,2]

class Solution {
    func transformArray(_ nums: [Int]) -> [Int] {
        return nums.map { $0 % 2 == 0 ? 0 : 1 }.sorted()
    }
}

let solution = Solution()
print(solution.transformArray(nums)) // output: [0,0,1,1]
print(solution.transformArray(nums2)) // output: [0,0,1,1,1]
