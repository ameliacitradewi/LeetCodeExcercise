/// Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
/// Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:
/// Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
/// Return k.

var nums1 = [3,2,2,3]
var val1 = 3
var nums2 = [0,1,2,2,3,0,4,2]
var val2 = 2

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums.removeAll { $0 == val }
        return nums.count
    }
}

let solution = Solution()
print(solution.removeElement(&nums1, val1)) // output: 2
print(solution.removeElement(&nums2, val2)) // output: 5
