/// Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

var nums1 = [1,2,3,1]
var k1 = 3
var nums2 = [1,0,1,1]
var k2 = 1
var nums3 = [1,2,3,1,2,3]
var k3 = 2

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var valueToIndex = [Int: Int] ()
        
        for (currentIndex, currentValue) in nums.enumerated() {
            if let matchedIndex = valueToIndex[currentValue], currentIndex - matchedIndex <= k {
                return true
            }
            valueToIndex[currentValue] = currentIndex
        }
        
        return false
    }
}

let solution = Solution()
print(solution.containsNearbyDuplicate(nums1, k1)) // true
print(solution.containsNearbyDuplicate(nums2, k2)) // true
print(solution.containsNearbyDuplicate(nums3, k3)) // false
