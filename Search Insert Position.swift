/// Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
/// You must write an algorithm with O(log n) runtime complexity.

var nums1 = [1,3,5,6]
var target1 = 5

var nums2 = [1,3,5,6]
var target2 = 2

var nums3 = [1,3,5,6]
var target3 = 7

var nums4 = [3,6,7,8,10]
var target4 = 5

var nums5 = [2,3,4,7,8,9]
var target5 = 11

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var result = 0
        
        for i in 0..<nums.count {
            if nums[i] == target {
                return i
            } else if nums[nums.count - 1] < target {
                return nums.count
            } else if target > nums[i] && target < nums[i+1] {
                return i+1
            }
        }
        
        return result
    }
}

let solution = Solution()
print(solution.searchInsert(nums1, target1)) // output: 2
print(solution.searchInsert(nums2, target2)) // output: 1
print(solution.searchInsert(nums3, target3)) // output: 4
print(solution.searchInsert(nums4, target4)) // output: 1
print(solution.searchInsert(nums5, target5)) // output: 6
