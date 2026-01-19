/// Given an array nums of size n, return the majority element.
/// The majority element is the element that appears more than ⌊n / 2⌋ times.
/// You may assume that the majority element always exists in the array.

var nums1 = [3,2,3] // output: 3
var nums2 = [2,2,1,1,1,2,2] // output: 2

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var freqMap = [Int: Int]()
        var result = 0
        
        for num in nums {
            freqMap[num, default: 0] += 1
        }
        
        if let (mostFreq, _) = freqMap.max(by: { $0.value < $1.value }) {
            result = mostFreq
        }
        
        return result
    }
}

/// Solving in linear time and in O(1) space
class Solution2 {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = nums[0]
        var count = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            count += (num == candidate) ? 1 : -1
        }
        
        return candidate
    }
}

let solution = Solution()
print(solution.majorityElement(nums1))
print(solution.majorityElement(nums2))

let solution2 = Solution2()
print(solution2.majorityElement(nums1))
print(solution2.majorityElement(nums2))
