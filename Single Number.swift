/// Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
/// You must implement a solution with a linear runtime complexity and use only constant extra space.

var nums1 = [2,2,1]
var nums2 = [4,1,2,1,2]
var nums3 = [1]
var nums4 = [1,4,2,1,2]

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var xor = 0
        
        for num in nums {
            xor ^= num
        }
        return xor
    }
}

let solution = Solution()
print(solution.singleNumber(nums1)) // output: 1
print(solution.singleNumber(nums2)) // output: 4
print(solution.singleNumber(nums3)) // output: 1
print(solution.singleNumber(nums4)) // output: 4
