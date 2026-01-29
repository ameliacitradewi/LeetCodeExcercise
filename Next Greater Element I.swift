var nums1 = [4,1,2]
var nums2 = [1,3,4,2] // output: [-1,3,-1]

var nums3 = [2,4]
var nums4 = [1,2,3,4] // output: [3,-1]

class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var nextGreater = [Int:Int]()

        for nums in nums2 {
            while let last = result.last, last < nums {
                result.removeLast()
                nextGreater[last] = nums
            }
            result.append(nums)
        }

        return nums1.map { nextGreater[$0] ?? -1 }
    }
}

let solution = Solution()
print(solution.nextGreaterElement(nums1, nums2))
print(solution.nextGreaterElement(nums3, nums4))
