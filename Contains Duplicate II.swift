var nums = [1,2,3,1,2,3]
var k = 2

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var valueToIndex = [Int: Int]()
        
        for (index, value) in nums.enumerated() {
            if let matchedIndex = valueToIndex[value], index - matchedIndex <= k {
                return true
            }
            valueToIndex[value] = index
        }
       
        return false
    }
}

let solution = Solution()
let result = solution.containsNearbyDuplicate(nums, k)
print(result)
