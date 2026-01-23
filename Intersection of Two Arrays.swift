/// Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must be unique and you may return the result in any order.
/// The intersection of two arrays is defined as the set of elements that are present in both arrays.

var nums1 = [1,2,2,1]
var nums2 = [2,2]
var nums3 = [4,9,5]
var nums4 = [9,4,9,8,4]

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        
        for num in set1 {
            if set2.contains(num) {
                result.append(num)
            }
        }
        
        return result
    }
}

let solution = Solution()
print(solution.intersection(nums1, nums2))
print(solution.intersection(nums2, nums4))

