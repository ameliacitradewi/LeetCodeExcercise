var nums = [0,0,1,1,1,2,2,3,3,4]

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Array(Set(nums))
        nums.sort()
        return nums.count
    }
}

let solution = Solution()
let result = solution.removeDuplicates(&nums)
print(result)
