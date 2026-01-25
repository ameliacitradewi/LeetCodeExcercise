/// Given an integer array nums, return the third distinct maximum number in this array. If the third maximum does not exist, return the maximum number.

var nums1 = [3,2,1]
var nums2 = [1,2]
var nums3 = [2,2,3,1]
var nums4 = [5,2,2]

class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var max1: Int? = nil
        var max2: Int? = nil
        var max3: Int? = nil
        
        for num in nums {
            // Skip duplicates
            if num == max1 || num == max2 || num == max3 {
                continue
            }
            
            if max1 == nil || num > max1! {
                max3 = max2
                max2 = max1
                max1 = num
            } else if max2 == nil || num > max2! {
                max3 = max2
                max2 = num
            } else if max3 == nil || num > max3! {
                max3 = num
            }
        }
        
        return max3 ?? max1!
    }
}

let solution = Solution()
print(solution.thirdMax(nums1)) // output: 1
print(solution.thirdMax(nums2)) // output: 2
print(solution.thirdMax(nums3)) // output: 1
print(solution.thirdMax(nums4)) // output: 5
