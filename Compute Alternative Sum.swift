/// You are given an integer array nums.
/// The alternating sum of nums is the value obtained by adding elements at even indices and subtracting elements at odd indices. That is, nums[0] - nums[1] + nums[2] - nums[3]...
/// Return an integer denoting the alternating sum of nums.

var nums = [1,3,5,7]
var nums2 = [100]


class Solution {
    func alternatingSum(_ nums: [Int]) -> Int {
        var sum = 0
        var sign = 1
        
        for num in nums {
            sum += sign * num
            sign = -sign
        }
        
        return sum
    }
}

class Solution2 {
    func alternatingSum(_ nums: [Int]) -> Int {
        var summary = 0
        if nums.count == 1 { return nums[0] }

        for (index, num) in nums.enumerated() {
            if index.isMultiple(of: 2) {
                summary += num
            } else {
                summary -= num
            }
        }

        return summary
    }
}

let solution = Solution()
print(solution.alternatingSum(nums)) // output: -4
print(solution.alternatingSum(nums2)) // output: 100



let solution2 = Solution2()
print(solution2.alternatingSum(nums)) // output: -4
print(solution2.alternatingSum(nums2)) // output: 100
