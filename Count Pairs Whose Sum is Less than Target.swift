/// Counts the number of index pairs `(i, j)` such that `i < j`
/// and the sum `nums[i] + nums[j]` is less than the given target.
///
/// - Parameters:
///   - nums: An array of integers.
///   - target: The target integer that the pair sum must be less than.
///
/// - Returns: The total number of valid index pairs `(i, j)` where
///   `i < j` and `nums[i] + nums[j] < target`.
///

var nums1 = [-1,1,2,3,1]
var target1 = 2

var nums2 = [-6,2,5,-2,-7,-1,3]
var target2 = -2

class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        var counter = 0
        
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if i < j && nums[i] + nums[j] < target {
                    counter += 1
                }
            }
        }
        
        return counter
    }
}


/// This method uses a **sorting + two-pointer** approach to improve performance compared to a brute-force solution on Solution 1.
class Solution2 {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        /// The array is first sorted in ascending order.
        /// Two pointers are then used to efficiently count multiple valid pairs in a single step by leveraging the sorted property of the array.
        /// Sort the array to enable the two-pointer technique.
        let nums = nums.sorted()
        
        /// Pointer starting from the smallest value.
        var left = 0
        
        /// Pointer starting from the largest value.
        var right = nums.count - 1
        
        var counter = 0
        
        /// Iterate while the left pointer is strictly less than the right pointer to ensure `i < j`.
        while left < right {
            /// If the sum of the smallest and largest values is less than the target, then all elements between `left` and `right` paired with `nums[left]` will also form valid pairs.
            if nums[left] + nums[right] < target {
                /// Count all valid pairs using the current `left` index.
                counter += (right - left)
                /// Move the left pointer forward since all pairs involving the current `left` index have been counted.
                left += 1
            } else {
                /// If the sum is too large, move the right pointer left to reduce the sum.
                right -= 1
            }
        }
        
        return counter
    }
}

let solution = Solution()
print(solution.countPairs(nums1, target1)) // output: 3
print(solution.countPairs(nums2, target2)) // output: 10

let solution2 = Solution2()
print(solution2.countPairs(nums1, target1)) // output: 3
print(solution2.countPairs(nums2, target2)) // output: 10
