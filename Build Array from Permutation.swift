var nums1 = [0,2,1,5,3,4]
var nums2 = [5,0,1,2,3,4]

class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        return nums.map { nums[$0] }
    }
}

let solution = Solution()
print(solution.buildArray(nums1)) // output: [0,1,2,4,5,3]
print(solution.buildArray(nums1)) // output: [4,5,0,1,2,3]
