var nums1 = [0,1,0,3,12] // output: [1,3,12,0,0]
var nums2 = [0] // output: [0]

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        
        for num in nums {
            if num != 0 {
                nums[index] = num
                index += 1
            }
        }
        
        while index < nums.count {
            nums[index] = 0
            index += 1
        }
    }
}

let solution = Solution()
print(solution.moveZeroes(&nums1))
print(solution.moveZeroes(&nums2))
