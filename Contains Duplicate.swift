var nums = [1,2,3,1]

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        if Array(Set(nums)).count != nums.count {
            return true
        }
        
        return false
    }
}

let solution = Solution()
let result = solution.containsDuplicate(nums)
print(result)
