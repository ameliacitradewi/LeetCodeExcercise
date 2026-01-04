/// You are given an integer array nums and an integer k. You can perform the following operation any number of times:
/// Select an index i and replace nums[i] with nums[i] - 1.
/// Return the minimum number of operations required to make the sum of the array divisible by k.

var nums1 = [3,9,7]
var k1 = 5
var nums2 = [4,1,3]
var k2 = 4
var nums3 = [3,2]
var k3 = 6

class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        return nums.reduce(0, +) % k
    }
}

let solution = Solution()
print(solution.minOperations(nums1, k1))
print(solution.minOperations(nums2, k2))
print(solution.minOperations(nums3, k3))

/// EXPLAINATION
/// The reduce() method is designed to convert a sequence into a single value, which makes it perfect for calculating the total of an array of numbers.
/// For example, given the following number array:
/// let numbers = [1, 12, 2, 9, 27]
/// We could calculate the total of all those numbers like this:
/// let total = numbers.reduce(0, +)
/// The first parameter passed to reduce() is the value it should start with, in this case 0. The second parameter is how it should combine that 0 with each item in your array, which means it will do 0 + 1 to make 1, then 1 + 12 to make 13, and so on.
