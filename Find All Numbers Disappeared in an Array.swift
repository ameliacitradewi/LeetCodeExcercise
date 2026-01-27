/// Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.

var nums = [4,3,2,7,8,2,3,1] // output: [5,6]
var nums2 = [1,1] // output: [2]

// this solution works only if nums array in small array.
// if var nums = [22000, 22000, until 22000 times], it will cause "time limit exceeded error".
class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        
        for i in 1...nums.count {
            if !nums.contains(i) {
                result.append(i)
            }
        }
        
        return result
    }
}

/// this is the best solution
/// Because numbers are in the range 1 to n, I can use the array itself as a hash map by marking indices as negative. After marking, any index that remains positive corresponds to a missing number.
class Solution2 {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var nums = nums
        var result = [Int]()
        
        for i in 0..<nums.count {
            let index = abs(nums[i]) - 1
            if nums[index] > 0 {
                nums[index] = -nums[index]
            }
        }
        
        for i in 0..<nums.count {
            if nums[i] > 0 {
                result.append(i + 1)
            }
        }
        
        return result
    }
}

let solution = Solution()
print(solution.findDisappearedNumbers(nums))
print(solution.findDisappearedNumbers(nums2))

