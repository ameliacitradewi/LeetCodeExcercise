/// Given an array nums containing n distinct numbers in the range [0, n],
/// return the only number in the range that is missing from the array.

var nums1 = [3,0,1]
var nums2 = [0,1]
var nums3 = [9,6,4,2,3,5,7,0,1]

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var output = 0
        
        for i in 0...nums.count {
            if !nums.contains(i) {
                output = i
            }
        }
        
        return output
    }
}
/// this solution works functionally, but nums.contains(i) makes it O(n²) and also not optimal.

class Solution2 {
    func missingNumber(_ nums: [Int]) -> Int {
        var result = nums.count
        
        for i in 0..<nums.count {
            result ^= i
            result ^= nums[i]
        }
        
        return result
    }
}
/// this solution works, already with O(n) time and O(1) complexity, but need >20MB memory

class Solution3 {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        let expectedSum = n * (n + 1) / 2
        let actualSum = nums.reduce(0, +)
        
        return expectedSum - actualSum
    }
}
/// this is the best solution.
/// key idea: sum of numbers from 0...n using formula n(n + 1) / 2
/// then substract the actual sum - missing number

let solution3 = Solution3()
print(solution3.missingNumber(nums1)) // output: 2
print(solution3.missingNumber(nums2)) // output: 2
print(solution3.missingNumber(nums3)) // output: 8
